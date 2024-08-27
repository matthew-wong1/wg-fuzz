struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, true, false), true, vec2<bool>(false, true), 2018u, Struct_1(1769f, -492f, vec2<bool>(false, false), 1336f, -2016f));

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec3<bool>(false, false, true), true, vec2<bool>(false, false), 1u, Struct_1(1116f, 219f, vec2<bool>(true, true), 268f, -1152f)), Struct_2(vec3<bool>(true, true, false), true, vec2<bool>(false, true), 24303u, Struct_1(-413f, -411f, vec2<bool>(false, true), -381f, 384f)));

var<private> global2: u32;

var<private> global3: Struct_3 = Struct_3(493f, vec4<u32>(1u, 91463u, 4294967295u, 41123u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    global1 = array<Struct_2, 2>();
    let var_0 = arg_3.e;
    let var_1 = var_0.c.x;
    let var_2 = global1[_wgslsmith_index_u32(global0.d, 2u)];
    let var_3 = false | arg_0.c.x;
    return ~(~vec3<u32>(~u_input.c.x, abs(global3.b.x), global3.b.x)) ^ (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 13861u, global3.b.x), vec3<u32>(arg_1.b.x << (global3.b.x % 32u), arg_3.d, _wgslsmith_dot_vec4_u32(vec4<u32>(103536u, u_input.c.x, u_input.c.x, 19299u), vec4<u32>(4294967295u, global0.d, 106284u, arg_1.b.x)))) << (global3.b.zxy % vec3<u32>(32u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    global3 = Struct_3(_wgslsmith_f_op_f32(ceil(global3.a)), global3.b);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-282f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.d)), arg_0.e.b) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(select(global0.e.d, -1154f, true)), all(vec4<bool>(true, false, false, arg_0.a.x))))))), vec2<bool>(any(arg_0.c), !(!all(global0.a))), -410f, global0.e.d);
    var_0 = Struct_1(global3.a, -189f, vec2<bool>(any(select(select(vec2<bool>(arg_2, var_0.c.x), var_0.c, global0.a.xz), global0.c, !arg_0.a.zy)), false), _wgslsmith_f_op_f32(-arg_0.e.e), -102f);
    global2 = 132036u;
    return global0.e;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(1282f, abs(vec4<u32>(global0.d, global0.d, abs(1u), ~select(15230u, global0.d, arg_0.c.x))));
    global2 = u_input.c.x;
    let var_1 = global0.e;
    var var_2 = firstTrailingBit(reverseBits(select(select(vec3<i32>(1i, -2147483647i, u_input.a), u_input.d, vec3<bool>(arg_0.c.x, true, arg_0.c.x)), vec3<i32>(select(-2147483647i, u_input.a, true), 1i, -1i), all(select(global0.a.zx, global0.a.xx, false)))));
    let var_3 = ~60385u;
    return Struct_1(-554f, global0.e.d, !global0.a.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), global0.e.a);
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_2(!(!(!vec3<bool>(global0.c.x, global0.c.x, true))), global0.a.x, !select(global0.a.xy, !global0.e.c, global0.a.x), ~(~u_input.c.x), func_4(func_3(global1[_wgslsmith_index_u32(1u, 2u)], select(~vec3<u32>(u_input.c.x, 64309u, 72435u), func_2(global0.e, Struct_3(global3.a, vec4<u32>(global0.d, 10865u, 7898u, u_input.c.x)), global3.a, Struct_2(global0.a, global0.c.x, vec2<bool>(true, global0.a.x), 4294967295u, Struct_1(-461f, 1000f, vec2<bool>(false, false), global3.a, 344f))), true), global0.b)));
    let var_1 = Struct_1(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.e.b)), _wgslsmith_f_op_f32(var_0.e.d + _wgslsmith_div_f32(var_0.e.b, 653f))))), select(!(!func_3(global1[_wgslsmith_index_u32(12536u, 2u)], vec3<u32>(1u, var_0.d, global0.d), true).c), var_0.a.xz, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-926f + _wgslsmith_f_op_f32(-global0.e.e)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e.a, var_0.e.a)) - -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1538f) + _wgslsmith_f_op_f32(-var_0.e.a)))), 133f);
    global0 = Struct_2(!(!(!vec3<bool>(var_1.c.x, global0.c.x, var_0.c.x))), ~u_input.a <= u_input.b.x, var_1.c, 0u, var_1);
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.d, 4294967295u, global0.d), ~_wgslsmith_div_vec3_u32(vec3<u32>(global3.b.x, u_input.c.x, 930u), vec3<u32>(global3.b.x, var_0.d, global3.b.x))), ~(~firstLeadingBit(vec3<u32>(46016u, 37862u, 4294967295u)))), 2u)];
    global3 = Struct_3(global0.e.b, _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(global3.b, global3.b), reverseBits(global3.b) ^ firstTrailingBit(vec4<u32>(1u, 1u, var_0.d, 0u))), ~firstLeadingBit(~vec4<u32>(global3.b.x, global3.b.x, 1u, 0u))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(abs(2147483647i));
    var var_1 = global1[_wgslsmith_index_u32(0u, 2u)];
    let var_2 = func_3(global1[_wgslsmith_index_u32(~1u, 2u)], vec3<u32>(_wgslsmith_sub_u32(global3.b.x, ~_wgslsmith_div_u32(1u, 6u)), ~1u, _wgslsmith_sub_u32(global0.d, global0.d)), !global0.e.c.x);
    var var_3 = _wgslsmith_clamp_u32(firstLeadingBit(var_1.d | min(global3.b.x << (var_1.d % 32u), _wgslsmith_div_u32(global3.b.x, global3.b.x))), _wgslsmith_mod_u32(global0.d, global0.d), func_2(var_2, Struct_3(_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(step(732f, 1000f))), ~(~global3.b)), 1451f, Struct_2(vec3<bool>(func_3(Struct_2(vec3<bool>(true, true, false), var_0, var_2.c, 0u, Struct_1(var_1.e.d, -321f, vec2<bool>(false, false), var_2.e, -645f)), vec3<u32>(global0.d, 1u, 1u), global0.c.x).c.x, true, var_1.a.x || false), u_input.e.x != select(u_input.a, 44426i, var_0), vec2<bool>(var_2.c.x, var_0), ~u_input.c.x, global0.e)).x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.b * global0.e.e));
    var var_5 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(936f, -292f, 792f, global0.e.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1474f, -2507f, var_2.e, -610f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, global0.e.d, 968f, -292f))))))))));
    var var_6 = var_5.x;
    var_5 = vec4<f32>(1453f, global0.e.e, -590f, 893f);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.zx, 1i);
}

