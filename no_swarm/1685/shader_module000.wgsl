struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 19> = array<bool, 19>(false, true, false, true, false, false, true, false, false, true, true, true, true, false, false, false, false, true, true);

var<private> global2: bool = false;

var<private> global3: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    return firstTrailingBit(~abs(-1i));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = reverseBits(global0.b.a.xw) << (vec2<u32>(firstTrailingBit(8710u), ~u_input.b) % vec2<u32>(32u));
    let var_1 = true | (func_3(Struct_3(Struct_2(global0.b.a), Struct_2(vec4<u32>(0u, 0u, arg_0, global0.a.a.x)), _wgslsmith_div_vec3_f32(global0.c, vec3<f32>(546f, -105f, global0.c.x)), global0.d), Struct_2(~vec4<u32>(76521u, arg_0, var_0.x, var_0.x))) > _wgslsmith_sub_i32(global0.d.x, select(firstLeadingBit(u_input.c.x), u_input.c.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.a.a.x, 13492u), 19u)])));
    var var_2 = reverseBits(vec4<u32>(1u, 11760u, u_input.a, ~global0.b.a.x));
    global3 = !all(vec4<bool>(select(any(vec3<bool>(true, global1[_wgslsmith_index_u32(39516u, 19u)], false)), global1[_wgslsmith_index_u32(56714u, 19u)] && var_1, global1[_wgslsmith_index_u32(~4294967295u, 19u)]), true, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(floor(global0.c.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -235f)));
    var var_3 = Struct_3(global0.a, Struct_2(global0.a.a), global0.c, -_wgslsmith_mod_vec2_i32(u_input.d.zx, vec2<i32>(_wgslsmith_mult_i32(2147483647i, u_input.d.x), u_input.c.x >> (4294967295u % 32u))));
    return Struct_1(~(~var_0.x) ^ _wgslsmith_add_u32(~8875u, ~_wgslsmith_div_u32(arg_0, var_2.x)), ~countOneBits(~(~global0.a.a.zy)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = vec3<i32>(14302i, -1i, ~(~(u_input.d.x | _wgslsmith_mod_i32(15351i, global0.d.x))));
    var var_1 = arg_2;
    var var_2 = global0.c.yz;
    let var_3 = Struct_1(4294967295u, vec2<u32>(~_wgslsmith_dot_vec2_u32(arg_2.a.xz, arg_0.b) | 47864u, arg_0.b.x));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(981f * var_2.x))));
    return _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1556u, ~abs(global0.a.a.x), func_2(reverseBits(var_1.a.x)).b.x)), global0.b.a.ywy);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> u32 {
    var var_0 = any(select(select(!select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], true, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)]), global1[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 19u)], !global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(arg_2.b.a.x, 19u)], any(vec2<bool>(false, global1[_wgslsmith_index_u32(2968u, 19u)]))), arg_2.b.a.x >= (47645u | arg_2.a.a.x)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -410f) == _wgslsmith_f_op_f32(-global0.c.x), !global1[_wgslsmith_index_u32(select(u_input.a, u_input.b, true), 19u)], global1[_wgslsmith_index_u32(func_4(func_2(arg_2.a.a.x), _wgslsmith_f_op_f32(sign(arg_2.c.x)), Struct_2(arg_0.a)), 19u)], false), !(!global1[_wgslsmith_index_u32(98944u, 19u)]) && (_wgslsmith_f_op_f32(-arg_2.c.x) <= _wgslsmith_f_op_f32(-1421f + arg_2.c.x))));
    let var_1 = 46766i;
    let var_2 = !(global1[_wgslsmith_index_u32(~1u, 19u)] | false);
    var var_3 = Struct_3(Struct_2(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(35737u, arg_0.a.x, 4294967295u, 48194u)) << (global0.a.a % vec4<u32>(32u)), ~global0.a.a)), Struct_2(max(_wgslsmith_add_vec4_u32(arg_2.a.a, global0.a.a), _wgslsmith_mult_vec4_u32(global0.b.a, vec4<u32>(68335u, arg_0.a.x, 4171u, 57902u))) >> (vec4<u32>(arg_2.a.a.x, ~global0.a.a.x, 9829u, max(arg_2.b.a.x, arg_0.a.x)) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f + _wgslsmith_f_op_f32(abs(arg_2.c.x)))), arg_2.c.x, global0.c.x), abs(abs(arg_2.d)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a.a.x, vec2<u32>(~reverseBits(1322u) & _wgslsmith_div_u32(min(global0.a.a.x, 4294967295u), _wgslsmith_dot_vec4_u32(global0.b.a, global0.b.a)), global0.a.a.x | ~func_1(Struct_2(global0.a.a), u_input.c.x, Struct_3(global0.a, Struct_2(vec4<u32>(40444u, u_input.a, 27209u, 1u)), vec3<f32>(1000f, global0.c.x, global0.c.x), vec2<i32>(u_input.d.x, u_input.d.x)))));
    let var_1 = Struct_3(Struct_2(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global0.a.a.x, var_0.a, var_0.a), global0.b.a))), Struct_2(vec4<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.a, global0.b.a.x, 1u), ~var_0.a, global0.b.a.x), u_input.a, _wgslsmith_dot_vec2_u32(var_0.b, ~vec2<u32>(u_input.b, var_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1204f, _wgslsmith_f_op_f32(trunc(105f))))), firstLeadingBit(-(~global0.d | firstLeadingBit(vec2<i32>(-36603i, -1i)))));
    var_0 = func_2(_wgslsmith_mod_u32(var_1.a.a.x, 69226u));
    var_0 = func_2(_wgslsmith_mod_u32(firstLeadingBit(firstLeadingBit(4294967295u)) << (var_1.b.a.x % 32u), u_input.a));
    global2 = -2147483647i != max(-(~9511i), select(1i, i32(-1i) * -1i, true) ^ var_1.d.x);
    var var_2 = global0.a.a;
    let var_3 = Struct_1(0u, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(~_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-62281i, 0i, u_input.d.x))), _wgslsmith_mult_i32(-1i, 44023i) << (select(u_input.a & var_0.b.x, 1u, global1[_wgslsmith_index_u32(var_0.a, 19u)] == true) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_1.c)), vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(max(var_1.c.x, var_1.c.x)), -1118f))), -(~_wgslsmith_add_i32(u_input.d.x, -global0.d.x)));
}

