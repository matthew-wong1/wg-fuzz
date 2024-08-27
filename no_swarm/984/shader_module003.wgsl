struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9>;

var<private> global1: vec4<i32> = vec4<i32>(1402i, 2147483647i, -16810i, 0i);

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<i32>(2147483647i, -4640i)), Struct_1(vec2<i32>(-264i, -19443i)), Struct_1(vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(4676i, 1829i)), Struct_1(vec2<i32>(0i, -63798i)), Struct_1(vec2<i32>(-46305i, -46899i)), Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(15294i, -976i)), Struct_1(vec2<i32>(35621i, -20960i)), Struct_1(vec2<i32>(2147483647i, -43059i)), Struct_1(vec2<i32>(-34264i, -1i)), Struct_1(vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<i32>(16566i, 1i)), Struct_1(vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(2147483647i, -1i)), Struct_1(vec2<i32>(-16793i, 1i)), Struct_1(vec2<i32>(16796i, 7645i)), Struct_1(vec2<i32>(10202i, 39789i)), Struct_1(vec2<i32>(5188i, -6816i)), Struct_1(vec2<i32>(-1i, 50041i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-14824i, -7307i)), Struct_1(vec2<i32>(-22119i, 33049i)), Struct_1(vec2<i32>(2869i, -59948i)));

var<private> global3: array<i32, 10> = array<i32, 10>(2147483647i, -27810i, 14149i, -28775i, 2147483647i, 0i, 1i, -1i, 0i, -4941i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<f32>) -> u32 {
    let var_0 = reverseBits(min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~43671u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25289u), vec2<u32>(10091u, 0u)), 0u), vec4<u32>(1u, 1u, 1u, 1u)), ~abs(abs(vec4<u32>(2358u, 4891u, 18082u, 1u)))));
    global2 = array<Struct_1, 24>();
    let var_1 = arg_0.x;
    var var_2 = !vec3<bool>(false, any(vec4<bool>(true, true, true, true)), false);
    let var_3 = Struct_3(!(!(true & !var_2.x)), Struct_1(~(global1.xw >> (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))), ~(~(vec4<i32>(-1i) * -vec4<i32>(0i, 2147483647i, 0i, 2147483647i))), vec4<bool>(all(!select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, true, true), vec3<bool>(false, false, false))), any(select(select(vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(false, true, false, var_2.x), vec4<bool>(var_2.x, true, true, true)), !vec4<bool>(true, false, var_2.x, var_2.x), !var_2.x)), any(select(vec4<bool>(false, true, var_2.x, true), select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, false, false), var_2.x), vec4<bool>(true, true, var_2.x, false))), all(select(vec4<bool>(false, true, var_2.x, true), vec4<bool>(true, var_2.x, true, true), var_2.x)) & !(!var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_1), -1181f, arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2179f)))))));
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = global1.yxz;
    global3 = array<i32, 10>();
    global3 = array<i32, 10>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(148f, 128f, -1054f), vec3<f32>(-793f, 1111f, -832f))) - vec3<f32>(925f, 628f, 948f)))));
    var var_2 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))));
    return abs(vec4<i32>(arg_1.a.x, 1i, global1.x, -min(arg_1.a.x, arg_1.a.x)));
}

fn func_2() -> u32 {
    global2 = array<Struct_1, 24>();
    let var_0 = global0[_wgslsmith_index_u32(max(99238u, 1u), 9u)];
    let var_1 = Struct_3(true, global2[_wgslsmith_index_u32(1u, 24u)], func_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~func_3(vec2<f32>(-1635f, 1742f), 366f, vec4<f32>(var_0.x, var_0.x, 837f, var_0.x))), 24u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(38626u, 0u, 22137u, 76721u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 17718u, 4294967295u)), _wgslsmith_mod_u32(30254u, 59108u), max(47020u, 0u), 1u)), 24u)]), !vec4<bool>(true, true, any(vec2<bool>(true, true)) && true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, 563f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -1423f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -680f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-724f, 2309f, var_0.x, 1195f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 823f, -1915f, 1028f)))))));
    let var_2 = (true != var_1.d.x) != true;
    global2 = array<Struct_1, 24>();
    return ~1u;
}

fn func_1() -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1996f - 1044f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1563f)) * _wgslsmith_f_op_f32(f32(-1f) * -931f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_div_f32(-492f, -1550f))), _wgslsmith_div_f32(-929f, 396f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1318f))));
    var var_1 = 15498u;
    let var_2 = global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(min(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 7347u), vec2<u32>(24054u, 1u)) & ~36405u), 51747u), ~func_2()), 24u)];
    var var_3 = ~u_input.a;
    global0 = array<vec2<f32>, 9>();
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_mod_i32(0i, ~global1.x), 1672i, firstTrailingBit(func_1()), -global3[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_sub_i32(-33536i, -_wgslsmith_div_i32(1i, 21577i)));
}

