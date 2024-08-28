struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(true, vec3<bool>(true, true, true), vec2<u32>(4294967295u, 1u)), Struct_1(false, vec3<bool>(true, true, true), vec2<u32>(1u, 1u)), Struct_1(true, vec3<bool>(false, false, true), vec2<u32>(0u, 110675u)));

var<private> global1: array<f32, 17>;

var<private> global2: array<Struct_2, 18>;

var<private> global3: array<Struct_2, 14>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32) -> bool {
    global4 = min(27734i, ~_wgslsmith_clamp_i32(26824i, max(~16122i, arg_2), u_input.b.x));
    var var_0 = true;
    global4 = arg_1;
    let var_1 = Struct_1(true, vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), arg_1 >= arg_1)), all(vec4<bool>(true, true, true, true)), !select(true, true, any(vec3<bool>(false, true, true)))), _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(109457u, 1u), vec2<u32>(19241u, 8657u), vec2<bool>(true, true)) << (_wgslsmith_add_vec2_u32(abs(vec2<u32>(4294967295u, 46398u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(28072u, 32523u), vec2<u32>(1u, 35453u), vec2<u32>(7887u, 18998u))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(max(vec2<u32>(28962u, 33406u), vec2<u32>(8427u, 4294967295u))), firstLeadingBit(vec2<u32>(1u, 1u))), reverseBits(reverseBits(vec2<u32>(1u, 1u)))));
    let var_2 = global3[_wgslsmith_index_u32(var_1.c.x, 14u)];
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(false, vec3<bool>(func_3(-(~u_input.b.x), 2147483647i, u_input.a), !func_3(-u_input.b.x, _wgslsmith_sub_i32(2147483647i, u_input.a), -u_input.a), true), ~(~vec2<u32>(1u, min(52709u, 1u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(28261u, 17u)], global1[_wgslsmith_index_u32(var_0.c.x, 17u)])), 1258f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_0.c.x, 17u)], global1[_wgslsmith_index_u32(2516u, 17u)]), vec2<f32>(-362f, global1[_wgslsmith_index_u32(var_0.c.x, 17u)]))))), select(select(select(vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(var_0.b.x, false), var_0.b.xy), vec2<bool>(true, var_0.a), !vec2<bool>(var_0.a, true)), !var_0.b.zy, var_0.b.zz))));
    return Struct_1(var_0.b.x, var_0.b, var_0.c);
}

fn func_1() -> u32 {
    let var_0 = func_2();
    let var_1 = ~_wgslsmith_mod_u32(var_0.c.x, ~firstTrailingBit(37977u));
    let var_2 = 81952u;
    global2 = array<Struct_2, 18>();
    global3 = array<Struct_2, 14>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(max(vec4<u32>(~0u, 4294967295u, abs(89221u), func_1()), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, var_0.x), 14u)];
    global3 = array<Struct_2, 14>();
    var var_2 = ~vec2<i32>(-9745i, 1i);
    var var_3 = true;
    var var_4 = _wgslsmith_clamp_vec3_u32(select(firstLeadingBit(_wgslsmith_div_vec3_u32(var_0.xxz, vec3<u32>(19482u, var_0.x, 3169u))) & var_0.www, ~min(var_0.xyx >> (vec3<u32>(var_1.d.c.x, var_0.x, var_1.d.c.x) % vec3<u32>(32u)), ~vec3<u32>(44776u, 4294967295u, 13644u)), var_1.e.b), var_0.ywx, max(min(~select(var_0.wxx, var_0.ywz, var_1.d.a), vec3<u32>(_wgslsmith_mult_u32(var_1.d.c.x, 20108u), ~1u, ~var_0.x)), var_0.yxz));
    let x = u_input.a;
    s_output = StorageBuffer(-21450i, var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 17u)], 1000f, var_1.b, var_1.b) * vec4<f32>(var_1.b, global1[_wgslsmith_index_u32(var_1.e.c.x, 17u)], 907f, global1[_wgslsmith_index_u32(var_4.x, 17u)]))))));
}

