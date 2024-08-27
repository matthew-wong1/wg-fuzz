struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 16>;

var<private> global2: array<bool, 18> = array<bool, 18>(true, false, false, false, false, false, false, false, true, false, false, true, true, true, true, true, false, false);

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> i32 {
    var var_0 = Struct_2(arg_1.e.x, global3.b, abs(0u), global3.d);
    var var_1 = arg_1.a;
    var var_2 = vec4<bool>(true, !(u_input.a <= countOneBits(arg_1.a.d.x)), global3.a, global3.a);
    let var_3 = !vec4<bool>(select(false, true, any(arg_1.e)) | true, !(!all(vec4<bool>(arg_1.e.x, true, false, var_2.x))), all(select(!vec2<bool>(var_2.x, var_0.a), select(vec2<bool>(false, true), vec2<bool>(arg_1.e.x, true), arg_1.e.xz), true)), min(-arg_2, firstTrailingBit(global3.d.x)) <= arg_2);
    var var_4 = Struct_3(Struct_2(false, Struct_1(max(firstLeadingBit(global3.c), u_input.b.x)), reverseBits(arg_1.b), vec4<i32>(-11216i, 47204i, abs(u_input.a), -5449i)), arg_1.a.c, -1000f, vec4<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(34317u, 4916u, var_1.b.a), vec3<u32>(4294967295u, arg_3, var_0.c))), _wgslsmith_div_u32(6209u, 47315u), 37722u, arg_1.d.x), vec3<bool>(var_3.x, any(select(arg_1.e.xy, vec2<bool>(false, global3.a), var_2.wz)) | (0u > global3.b.a), all(select(arg_1.e.xz, var_3.yw, !var_3.xz))));
    return var_1.d.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = ((func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), Struct_3(Struct_2(false, global3.b, global3.b.a, vec4<i32>(global3.d.x, u_input.a, u_input.a, -42760i)), u_input.b.x, 496f, vec4<u32>(u_input.b.x, 0u, global3.b.a, global3.b.a), vec3<bool>(false, global3.a, true)), ~u_input.a, ~1u) ^ -(u_input.a ^ u_input.a)) ^ ~(_wgslsmith_mult_i32(global3.d.x, u_input.a) ^ _wgslsmith_dot_vec3_i32(global3.d.zyy, global3.d.zyz))) << (~abs(~0u) % 32u);
    var var_1 = (select(_wgslsmith_dot_vec3_u32(vec3<u32>(68415u, 4294967295u, arg_0) << (vec3<u32>(23678u, global3.c, 0u) % vec3<u32>(32u)), vec3<u32>(0u, 16058u, u_input.b.x)), countOneBits(1u), all(!vec4<bool>(true, true, global3.a, global2[_wgslsmith_index_u32(45564u, 18u)]))) & ~global3.b.a) & 31453u;
    var var_2 = vec3<bool>(all(!select(vec4<bool>(global2[_wgslsmith_index_u32(49471u, 18u)], true, false, global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<bool>(false, global3.a, global2[_wgslsmith_index_u32(arg_0, 18u)], true), global3.a)) & false, !global3.a, all(!select(!vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], global3.a), !vec3<bool>(true, global3.a, false), vec3<bool>(false, global3.a, false))));
    global2 = array<bool, 18>();
    var var_3 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(410f)) - global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))))), 1273f);
    return Struct_1(abs(1u) >> (max(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(20840u, 12516u, global3.c, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(14965u, 1u, global1[_wgslsmith_index_u32(global3.c, 16u)], u_input.b.x), vec4<u32>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(77878u, 16u)], global3.c)))) % 32u));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-834f, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -295f) + vec4<f32>(-498f, 411f, -184f, global0.x)), !vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)], false, false))) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), -108f, -1632f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(1085f + 480f), global0.x, _wgslsmith_f_op_f32(-global0.x)))));
    global3 = Struct_2(!arg_0.a, func_2(u_input.b.x), ~(1u ^ global3.b.a), global3.d);
    global2 = array<bool, 18>();
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1681f, var_0.x, var_0.x) + vec4<f32>(global0.x, global0.x, global0.x, global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(1024f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_0.x, -280f))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(-181f))))));
    let var_1 = arg_1;
    return select(!vec4<bool>(false, -arg_0.d.x < global3.d.x, global3.a, true), vec4<bool>(global2[_wgslsmith_index_u32(~u_input.b.x, 18u)], !(!(!global3.a)), any(select(vec4<bool>(global3.a, global2[_wgslsmith_index_u32(0u, 18u)], arg_0.a, true), vec4<bool>(true, true, global3.a, false), select(vec4<bool>(arg_0.a, true, global2[_wgslsmith_index_u32(u_input.b.x, 18u)], global2[_wgslsmith_index_u32(var_1, 18u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 18u)], false, false), arg_0.a))), true), !select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(2598u, 18u)], false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(var_1, 18u)], true, global3.a, arg_0.a), true), !vec4<bool>(false, global3.a, global3.a, true), global3.a), !select(vec4<bool>(global3.a, global3.a, false, false), vec4<bool>(true, global3.a, true, global3.a), vec4<bool>(true, arg_0.a, arg_0.a, global3.a)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, ~var_1), 18u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 16>();
    var var_0 = select(!vec4<bool>(!(!global3.a), true, true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~global3.b.a, global3.c), 18u)]), select(vec4<bool>(all(!vec2<bool>(global3.a, global2[_wgslsmith_index_u32(global3.b.a, 18u)])), true, true, any(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(27781u, 18u)], global2[_wgslsmith_index_u32(global3.b.a, 18u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 18u)], global3.a, global3.a), vec4<bool>(global3.a, global2[_wgslsmith_index_u32(4294967295u, 18u)], global3.a, false)))), !select(func_1(Struct_2(global3.a, global3.b, global3.c, global3.d), u_input.b.x), select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(10849u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 18u)], false, global2[_wgslsmith_index_u32(global3.b.a, 18u)], global3.a), false), select(vec4<bool>(global3.a, true, global3.a, global2[_wgslsmith_index_u32(global3.c, 18u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 18u)], global3.a), vec4<bool>(global2[_wgslsmith_index_u32(0u, 18u)], true, false, false))), all(func_1(Struct_2(false, global3.b, global3.b.a, global3.d), global3.c ^ 72378u).wy)), global3.a == true);
    let var_1 = u_input.b.x;
    global2 = array<bool, 18>();
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(~_wgslsmith_div_i32(1i, u_input.a)), ~global3.d.x, max(-abs(-2147483647i), 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-countOneBits(-1715i), -1i, -(~38524i)), select(vec3<i32>(u_input.a, global3.d.x, -2147483647i) & vec3<i32>(u_input.a, 1i, -36498i), countOneBits(global3.d.wwx) ^ global3.d.wzy, !(!var_0.xzx))));
    let var_3 = ~firstTrailingBit(-25878i);
    var var_4 = func_2(~(~global3.b.a));
    global1 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

