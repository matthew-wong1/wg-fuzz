struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

var<private> global1: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(38146u, 4294967295u), vec2<u32>(45521u, 0u), vec2<u32>(28675u, 67052u), vec2<u32>(1u, 61426u), vec2<u32>(31848u, 98113u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 33241u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 8041u), vec2<u32>(4294967295u, 1u), vec2<u32>(33692u, 4294967295u), vec2<u32>(80519u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(7434u, 29179u), vec2<u32>(27519u, 701u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(37584u, 66463u), vec2<u32>(0u, 1829u), vec2<u32>(33903u, 4294967295u), vec2<u32>(0u, 39878u), vec2<u32>(40230u, 8001u), vec2<u32>(0u, 11937u));

var<private> global2: array<vec2<bool>, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = array<vec2<u32>, 26>();
    var var_0 = 2147483647i;
    let var_1 = ~(-2147483647i);
    let var_2 = ~firstTrailingBit(vec4<i32>(-var_1, -23120i, var_1, ~(i32(-1i) * -1i)));
    var var_3 = Struct_1(reverseBits(vec4<u32>(13789u, ~1u, 1u, 1u)) & _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(63683u, u_input.a, 22278u, 1u) | vec4<u32>(16533u, u_input.a, u_input.a, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 8484u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.a, 1u, 21960u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(150f, _wgslsmith_f_op_f32(-2052f * _wgslsmith_div_f32(305f, -101f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f + 1065f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(436f)), -1098f)) * vec4<f32>(-111f, 103f, -511f, _wgslsmith_f_op_f32(ceil(979f)))));
    return all(vec2<bool>(any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), (var_2.x > _wgslsmith_add_i32(var_1, 1i)) || (~u_input.a == ~var_3.a.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = any(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true), func_3())));
    let var_1 = ~u_input.a;
    let var_2 = !(!(!all(vec4<bool>(false, true, true, false))));
    var_0 = func_3();
    var var_3 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_2)), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), -670f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2223f, 257f) - arg_2)), !(!global2[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<bool>(true, _wgslsmith_f_op_f32(-arg_1.x) == _wgslsmith_div_f32(arg_2, -1000f)), vec3<u32>(firstLeadingBit(var_1 & 4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(11553u, 4294967295u), global1[_wgslsmith_index_u32(u_input.a, 26u)]), ~abs(var_1))), firstTrailingBit(~0i));
    return Struct_1(~select(vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a, var_3.a.d.x), 4294967295u, ~7624u), select(~vec4<u32>(var_1, 7708u, var_1, u_input.a), vec4<u32>(u_input.a, 0u, var_1, var_1), select(vec4<bool>(var_2, false, var_3.a.c.x, true), vec4<bool>(false, var_3.a.b.x, var_3.a.b.x, var_3.a.b.x), vec4<bool>(true, false, false, var_3.a.c.x))), select(!vec4<bool>(var_3.a.c.x, true, var_2, var_3.a.b.x), vec4<bool>(true, false, false, true), var_2 && false)), var_3.a.a);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec3<i32>, 17>();
    global2 = array<vec2<bool>, 4>();
    let var_0 = _wgslsmith_add_i32(20199i, _wgslsmith_add_i32(min(26396i, -arg_0), arg_1) & ~arg_1);
    global2 = array<vec2<bool>, 4>();
    let var_1 = arg_2.d.x;
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.xx * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.x, arg_2.a.x), vec2<f32>(-700f, arg_2.a.x))))), arg_2.a, arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-222f, -1890f) - vec2<f32>(-534f, -403f)), vec2<f32>(117f, -1205f), false)) + vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + 723f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-329f)) * -384f))))));
    var var_1 = func_1(-1i << (u_input.a % 32u), 1i, Struct_2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * var_0.x))), var_0.x, var_0.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, countOneBits(455u)), vec2<u32>(u_input.a, 34815u) >> (vec2<u32>(42629u, 4294967295u) % vec2<u32>(32u))), 4u)], vec2<bool>(any(vec2<bool>(false, false)), true), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a) ^ abs(vec3<u32>(26453u, 83445u, u_input.a)))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -1956f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2033f, var_1.b.x)) + vec2<f32>(-343f, 273f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(739f, -1226f) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1806f, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-413f, 297f)) - vec2<f32>(var_0.x, 889f)))))), select(global2[_wgslsmith_index_u32(~firstTrailingBit(u_input.a) & 1u, 4u)], global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(global1[_wgslsmith_index_u32(52089u, 26u)]), vec2<u32>(4294967295u, 27215u) << (global1[_wgslsmith_index_u32(var_1.a.x, 26u)] % vec2<u32>(32u))), 4u)], var_0.x == _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-247f + 1259f)))));
    let var_2 = Struct_2(var_1.b, !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~u_input.a), ~0u), 4u)], select(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), global2[_wgslsmith_index_u32(0u, 4u)])), true), !(!global2[_wgslsmith_index_u32(~var_1.a.x, 4u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, min(~u_input.a, _wgslsmith_clamp_u32(0u, u_input.a, 1u))), 4u)]), var_1.a.ywz | var_1.a.zwz);
    global1 = array<vec2<u32>, 26>();
    var_1 = func_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-79766i, 0i >> (var_1.a.x % 32u), 12477i), global0[_wgslsmith_index_u32(min(var_1.a.x, _wgslsmith_sub_u32(~1u, min(var_1.a.x, var_2.d.x))), 17u)]), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, -1i, -1i)), select(vec3<i32>(3295i, 38053i, 2147483647i), vec3<i32>(2147483647i, 33121i, -14540i), true)) & ~(~0i), 97742i), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -300f)) + var_2.a.x), -2764f, 1547f)), 4294967295u, 4294967295u, min(select(~(var_2.d << (var_2.d % vec3<u32>(32u))), var_1.a.www, !select(vec3<bool>(true, false, var_2.b.x), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), (vec3<u32>(4294967295u, 1u, 1u) ^ max(vec3<u32>(1u, u_input.a, var_2.d.x), var_2.d)) | var_1.a.zwz), vec2<u32>(u_input.a, var_2.d.x));
}

