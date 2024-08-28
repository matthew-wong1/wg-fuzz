struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-1000f);

var<private> global1: array<f32, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = 0i;
    var var_1 = Struct_4((36703i == _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -57893i, 13760i, 37717i) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(1i, 53902i, 2147483647i, 2147483647i))) || (~_wgslsmith_dot_vec3_u32(u_input.a.zww, u_input.a.xww) != 21406u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)] - -1535f) * _wgslsmith_f_op_f32(f32(-1f) * -493f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(87091u, 1u)])))), u_input.a.x);
    var var_2 = any(!(!select(vec4<bool>(true, var_1.a, var_1.a, true), vec4<bool>(true, true, var_1.a, true), var_1.a))) || any(!(!vec4<bool>(var_1.a, false, true, var_1.a)));
    var var_3 = Struct_1(!vec4<bool>(false, false, all(vec2<bool>(var_1.a, true)) || any(vec4<bool>(var_1.a, false, true, var_1.a)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.a.x, 31u)])) <= -374f));
    global0 = array<f32, 1>();
    return all(select(!select(var_3.a.zyy, !vec3<bool>(false, var_3.a.x, var_1.a), any(var_3.a.zwz)), vec3<bool>(var_1.a, select(!var_3.a.x, var_3.a.x, true), true), !var_3.a.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = (arg_0.x >> (u_input.a.x % 32u)) & firstLeadingBit(arg_0.x);
    var var_1 = Struct_1(vec4<bool>(true, func_3(), true, true));
    let var_2 = vec3<i32>(-2378i, 0i >> (u_input.a.x % 32u), 1i);
    var var_3 = countOneBits(-var_2);
    var_1 = Struct_1(!select(vec4<bool>(true, select(true, true, true), var_1.a.x, true), var_1.a, select(!vec4<bool>(var_1.a.x, false, var_1.a.x, true), vec4<bool>(false, var_1.a.x, var_1.a.x, false), false)));
    return Struct_2(_wgslsmith_sub_i32(-1i, var_2.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<u32>) -> u32 {
    let var_0 = firstTrailingBit(reverseBits(-(vec4<i32>(-4329i, -13256i, 28481i, arg_0.x) >> (u_input.a % vec4<u32>(32u))))) | -vec4<i32>(1115i << (arg_2.x % 32u), i32(-1i) * -arg_0.x, _wgslsmith_sub_i32(48930i << (1u % 32u), arg_0.x), -1i);
    global1 = array<f32, 31>();
    var var_1 = Struct_5(var_0.wyy, Struct_2(max(-46986i, var_0.x)), arg_2.zz);
    var var_2 = func_2(countOneBits(vec4<u32>(abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.c.x, 74848u), vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), 1u, var_1.c.x)), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(17327u, 1u)] + global0[_wgslsmith_index_u32(107603u, 1u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 31u)])));
    var_1 = Struct_5(vec3<i32>(-_wgslsmith_mult_i32(abs(var_1.b.a), ~12172i), -1i, _wgslsmith_sub_i32(max(_wgslsmith_div_i32(var_1.b.a, 1i), 0i), arg_0.x)), var_1.b, ~vec2<u32>(0u, _wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(arg_2.x, 4294967295u))));
    return _wgslsmith_dot_vec2_u32(abs(countOneBits(u_input.a.zx)), vec2<u32>(arg_2.x, 21608u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    var var_0 = abs(u_input.a.ww);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1066f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 31u)], 128f) * -499f) + _wgslsmith_f_op_f32(trunc(-492f)))));
    var_0 = u_input.a.zz;
    global1 = array<f32, 31>();
    let var_2 = vec2<bool>(true, true);
    global0 = array<f32, 1>();
    var var_3 = Struct_4(!var_2.x, -1000f, ~(~(~(26218u >> (u_input.a.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a.wz), var_3.b, _wgslsmith_mult_vec2_u32(~reverseBits(u_input.a.zz), ~countOneBits(u_input.a.xz)) | (vec2<u32>(~4294967295u, func_1(vec2<i32>(2147483647i, 0i), false, vec3<u32>(43740u, 4294967295u, u_input.a.x))) ^ _wgslsmith_add_vec2_u32(min(u_input.a.zx, vec2<u32>(39349u, 1u)), min(vec2<u32>(var_0.x, var_3.c), u_input.a.xw))), func_2(abs(vec4<u32>(abs(4294967295u), 0u, _wgslsmith_mod_u32(66139u, var_0.x), var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(637f, var_3.b) * vec2<f32>(498f, -1026f))))).a, vec2<i32>(1i, 1i));
}

