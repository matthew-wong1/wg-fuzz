struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(10400i), Struct_2(1i), Struct_2(-35970i), Struct_2(64561i), Struct_2(-8590i), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(-20072i), Struct_2(-1i), Struct_2(-29668i), Struct_2(21330i), Struct_2(-1i), Struct_2(-57749i), Struct_2(-1i), Struct_2(-9453i), Struct_2(-1i), Struct_2(4180i), Struct_2(2147483647i), Struct_2(-59361i), Struct_2(-19800i), Struct_2(0i), Struct_2(7299i), Struct_2(-2019i), Struct_2(-24712i), Struct_2(41744i));

var<private> global3: vec4<u32> = vec4<u32>(38981u, 0u, 1u, 1u);

var<private> global4: array<Struct_3, 4>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, 1i), arg_2.a, _wgslsmith_mult_i32(1i, ~(-u_input.a.x))) & arg_2.a;
    global3 = vec4<u32>(arg_0.x, global3.x, 4294967295u, abs(_wgslsmith_dot_vec3_u32(~(~arg_0.zwy), _wgslsmith_div_vec3_u32(arg_0.xzz, min(arg_0.xxw, global3.wxz)))));
    global2 = array<Struct_2, 26>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(trunc(833f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-994f, _wgslsmith_f_op_f32(arg_1 - 141f), any(vec4<bool>(true, true, true, global1.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.b.a.x, arg_1), _wgslsmith_f_op_f32(1521f * arg_1))), global1.a))));
    global0 = array<vec4<bool>, 31>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1482f, -1940f)))), 1f, arg_1, 1626f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, global1.b.a.x), _wgslsmith_f_op_f32(global1.b.a.x * global1.b.a.x), _wgslsmith_f_op_f32(floor(var_1.a.x)))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    var var_0 = global1.b.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, arg_0.x, arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, 328f, arg_2.b.a.x, arg_2.b.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.a.x, 278f, -902f, arg_0.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(global3.x, 4294967295u, 0u, global3.x), 431f, global2[_wgslsmith_index_u32(~0u, 26u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, 1064f, global1.b.a.x) + vec4<f32>(1438f, 702f, arg_1.a.x, 850f))))));
    var var_2 = -u_input.b.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 456f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.ww))))));
    let var_4 = global3.x;
    return global2[_wgslsmith_index_u32((36136u >> (global3.x % 32u)) ^ 73778u, 26u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(u_input.a.x);
    var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-689f - _wgslsmith_div_f32(-164f, global1.b.a.x)))), 115f, _wgslsmith_f_op_f32(-348f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1915f) * _wgslsmith_f_op_f32(max(global1.b.a.x, 764f))))), arg_1.b, arg_1, !all(select(!vec2<bool>(arg_1.a, true), vec2<bool>(global1.a, arg_1.a), all(vec2<bool>(arg_1.a, false)))));
    global3 = ~abs(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(22074u, 15734u, global3.x, global3.x), vec4<u32>(global3.x, 1u, arg_0.x, 4294967295u)), abs(vec4<u32>(1u, arg_0.x, 30190u, 4294967295u) >> (vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u)))));
    global2 = array<Struct_2, 26>();
    var var_1 = select(!all(select(!vec4<bool>(arg_1.a, false, arg_1.a, true), vec4<bool>(global1.a, arg_1.a, true, true), !global1.a)), true, true);
    return select(vec2<bool>(!any(global0[_wgslsmith_index_u32(~0u, 31u)]), global1.a), select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), !vec2<bool>(arg_1.a, false), any(vec4<bool>(false, arg_1.a, true, true))), !(!vec2<bool>(global1.a, arg_1.a)), !(!vec2<bool>(true, global1.a))), vec2<bool>(true, ~(-61214i) == max(25307i, u_input.b.x)), any(global0[_wgslsmith_index_u32(arg_0.x, 31u)])), vec2<bool>(global1.a, false));
}

fn func_4(arg_0: vec2<bool>) -> StorageBuffer {
    global0 = array<vec4<bool>, 31>();
    global1 = Struct_3(!arg_0.x, global1.b);
    global2 = array<Struct_2, 26>();
    var var_0 = all(vec3<bool>(true, any(!vec2<bool>(global1.a, true)), any(arg_0))) && all(vec3<bool>(select(global1.a, true, u_input.a.x >= -10452i), all(vec2<bool>(global1.a, false)) || (true & arg_0.x), !global1.a && all(vec3<bool>(true, global1.a, false))));
    global1 = Struct_3(all(global0[_wgslsmith_index_u32(~63002u, 31u)]), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f)), _wgslsmith_f_op_f32(-1995f + _wgslsmith_f_op_f32(floor(global1.b.a.x))))));
    return StorageBuffer(u_input.b.zyz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.wzy, -u_input.b.yxx), reverseBits(max(1i, firstLeadingBit(-u_input.a.x))));
    let var_3 = global2[_wgslsmith_index_u32(abs(min(global3.x, ~(~4294967295u))), 26u)];
    var var_4 = global2[_wgslsmith_index_u32(global3.x, 26u)];
    var var_5 = Struct_3(!global1.a, Struct_1(global1.b.a));
    global4 = array<Struct_3, 4>();
    var_4 = Struct_2(_wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(max(var_3.a, u_input.b.x), _wgslsmith_clamp_i32(var_4.a, var_1.x, var_4.a), -var_4.a)), ~28509i));
    let x = u_input.a;
    s_output = func_4(select(func_1(~(~global3.zxw), Struct_3(var_5.a, Struct_1(global1.b.a)), Struct_1(vec2<f32>(411f, -641f))), !(!(!vec2<bool>(global1.a, var_5.a))), vec2<bool>(global1.a, !var_5.a)));
}

