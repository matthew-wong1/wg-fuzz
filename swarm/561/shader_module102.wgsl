struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 0u, 4294967295u);

var<private> global1: array<bool, 12>;

var<private> global2: vec2<f32>;

var<private> global3: array<bool, 24> = array<bool, 24>(false, true, true, false, false, false, false, false, true, false, true, true, true, false, true, false, false, true, false, false, false, true, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(u_input.a <= 0i, !global3[_wgslsmith_index_u32(4294967295u, 24u)])), true), 4648u, -2147483647i, _wgslsmith_f_op_f32(arg_0 + -209f));
    var var_1 = Struct_1(!select(vec2<bool>(!global3[_wgslsmith_index_u32(u_input.b, 24u)], any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(var_0.b, 24u)], true))), select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(u_input.b, 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(3763u, 12u)], true), true), !vec2<bool>(true, var_0.a.x), var_0.a), vec2<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], true, true)), false)), global0.x | var_0.b, u_input.a, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.x, -1767f)))));
    var var_2 = global0.x;
    global1 = array<bool, 12>();
    var var_3 = select(!var_0.a, var_1.a, global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.x, global0.x, 4294967295u, u_input.b), vec4<u32>(var_0.b, global0.x, 58759u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.b, 51893u, var_0.b), vec4<u32>(u_input.b, u_input.b, var_1.b, 4294967295u))) >> (_wgslsmith_mult_u32(var_0.b, 46462u) % 32u)), 24u)]);
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    global3 = array<bool, 24>();
    var var_0 = Struct_1(!(!arg_3.a), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.b, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(6639u, arg_1.b, 1u), vec3<u32>(47575u, 1u, 4294967295u))) & arg_3.b, global0.x), ~1i, _wgslsmith_f_op_f32(arg_2.x + global2.x));
    let var_1 = countOneBits(_wgslsmith_mult_vec2_u32(reverseBits(select(_wgslsmith_mult_vec2_u32(vec2<u32>(5386u, 24710u), global0.zy), vec2<u32>(arg_1.b, global0.x), !arg_0.a)), ~(~(~vec2<u32>(arg_3.b, arg_0.b)))));
    var var_2 = vec3<u32>(~u_input.b, firstTrailingBit(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.b, 4039u), abs(49406u))), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(15824u, arg_1.b), var_1) & ((var_0.b ^ 6093u) << ((85455u ^ arg_1.b) % 32u)), 1u, var_0.b));
    var var_3 = arg_3;
    return false;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1393f, global2.x))), _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, global2.x))) - vec2<f32>(-490f, -823f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))))));
    var var_0 = ~(39823u ^ abs(func_2(_wgslsmith_f_op_f32(-global2.x))));
    let var_1 = countOneBits(~u_input.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global2.x, global2.x, func_3(Struct_1(vec2<bool>(true, true), 41676u, arg_0, -1292f), Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 12u)], false), global0.x, 2147483647i, global2.x), vec3<f32>(-353f, global2.x, global2.x), Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(19012u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), 4294967295u, -16718i, global2.x)))))), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(ceil(1674f)))));
    var var_3 = !global1[_wgslsmith_index_u32(~((0u | global0.x) & u_input.b), 12u)];
    return Struct_1(select(select(!select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 24u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(48625u, 12u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(global0.x, 12u)])), select(select(vec2<bool>(global1[_wgslsmith_index_u32(global0.x, 12u)], global3[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0.x, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)]), false), vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], false), !vec2<bool>(true, global1[_wgslsmith_index_u32(global0.x, 12u)])), select(global3[_wgslsmith_index_u32(global0.x, 24u)] && global3[_wgslsmith_index_u32(10914u, 24u)], global3[_wgslsmith_index_u32(global0.x ^ 4294967295u, 24u)], false)), !select(select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 24u)], false), vec2<bool>(true, false), true), vec2<bool>(global1[_wgslsmith_index_u32(83676u, 12u)], global3[_wgslsmith_index_u32(global0.x, 24u)]), vec2<bool>(true, true)), _wgslsmith_sub_u32(max(4294967295u, 23684u), 0u >> (u_input.b % 32u)) >= ~4294967295u), min(~(~u_input.b), u_input.b), arg_0, 882f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = func_1(_wgslsmith_mod_i32(min(-32239i, -1i), u_input.a));
    var var_2 = (~_wgslsmith_div_vec2_i32(~vec2<i32>(27496i, u_input.a), countOneBits(vec2<i32>(var_1.c, -2147483647i))) ^ -select(vec2<i32>(642i, var_1.c) << (global0.xy % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, 18408i)), !vec2<bool>(var_1.a.x, false))) << (global0.yx % vec2<u32>(32u));
    var var_3 = all(!(!vec4<bool>(true, var_1.a.x, true, true)));
    let var_4 = var_1;
    global1 = array<bool, 12>();
    var var_5 = func_1(-2147483647i);
    let var_6 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(step(-134f, -723f))), _wgslsmith_f_op_f32(trunc(var_1.d)), var_5.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2227f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-35913i, min(1u, ~var_1.b), u_input.a, vec3<i32>(~(-1i), -2147483647i, _wgslsmith_sub_i32(countOneBits(var_4.c), var_2.x)));
}

