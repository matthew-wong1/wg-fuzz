struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(-256f, vec4<i32>(1i, 46190i, 0i, 0i), Struct_2(Struct_1(4516u), 192f, 0i, true, 663f), vec2<f32>(-791f, -1443f)), Struct_3(389f, vec4<i32>(0i, 8852i, i32(-2147483648), -28610i), Struct_2(Struct_1(1u), -1379f, -60972i, false, 678f), vec2<f32>(1000f, 1000f)));

var<private> global2: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(false, true, false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global2 = array<Struct_4, 31>();
    let var_0 = vec2<u32>(~u_input.a | 4294967295u, u_input.b);
    global2 = array<Struct_4, 31>();
    global1 = array<Struct_3, 2>();
    global2 = array<Struct_4, 31>();
    return _wgslsmith_dot_vec2_u32(~firstTrailingBit(~select(vec2<u32>(u_input.b, u_input.b), var_0, arg_0.zx)), var_0);
}

fn func_2(arg_0: i32) -> bool {
    global0 = (_wgslsmith_div_u32(func_3(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false)), u_input.a) | ~u_input.a) < (~(~(~20736u)) ^ u_input.a);
    return all(!vec2<bool>(u_input.b >= 1u, true)) && select(true, false, true);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = 0i;
    global0 = all(!vec4<bool>(arg_0.c.d, select(true, arg_0.c.d, arg_1.a.x), false, arg_0.c.d));
    let var_1 = Struct_2(Struct_1(arg_0.c.a.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-372f, 1321f), arg_0.d.x)) * arg_0.d.x))), 2147483647i << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.c.a.a, u_input.a, arg_0.c.a.a, arg_0.c.a.a)), reverseBits(vec4<u32>(4294967295u, arg_0.c.a.a, 32765u, u_input.a))) % 32u), any(arg_1.a.xz), arg_0.d.x);
    var_0 = abs(~select(-var_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, 1i, arg_0.b.x, arg_0.c.c), ~arg_0.b), !all(vec2<bool>(false, arg_0.c.d))));
    var var_2 = vec4<bool>(arg_1.a.x, var_1.d, all(!vec4<bool>(true, true, false, func_2(-19810i))), false);
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.d)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.e, var_1.e)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(arg_0.d)), _wgslsmith_f_op_vec2_f32(select(arg_0.d, arg_0.d, true)), vec2<bool>(true, arg_1.a.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1334f, _wgslsmith_f_op_f32(-var_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-739f, 831f))))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f))));
    global0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(1482f, vec4<i32>(5624i, -46098i, -22615i, -16818i), Struct_2(Struct_1(u_input.a), 487f, -25337i, false, -378f), vec2<f32>(-1523f, 663f)), global2[_wgslsmith_index_u32(u_input.b, 31u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-791f, -974f), vec2<f32>(-434f, 660f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-388f, -1520f) * vec2<f32>(524f, 394f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, 2402f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1553f, 949f)))));
    global0 = select(select(true, !(_wgslsmith_dot_vec4_i32(vec4<i32>(-92577i, 0i, 10748i, 24878i), vec4<i32>(-16298i, 2147483647i, 0i, 11634i)) == 1i), all(!select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(true, var_0, true, true), vec4<bool>(false, true, true, var_0)))), all(!vec4<bool>(!var_0, true && var_0, var_0, u_input.a <= u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))) < -595f);
    var var_2 = global2[_wgslsmith_index_u32(~48176u, 31u)];
    var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(reverseBits(_wgslsmith_mod_u32(5400u, 1u)) & ~u_input.a, countOneBits(~u_input.a))), 31u)];
    global1 = array<Struct_3, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-883f * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-350f + 726f))), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -10089i) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<i32>(34344i, 1i)), _wgslsmith_sub_i32(-12082i, _wgslsmith_add_i32(-35266i, 1i)), 0i, firstTrailingBit(-2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, 707f, -1205f, var_1.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, -1441f, 266f))), vec4<bool>(true, var_0, var_0, var_2.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.x, 749f), _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(var_1.x - var_1.x), -984f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -525f, var_1.x, var_1.x) + vec4<f32>(var_1.x, var_1.x, -617f, var_1.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1091f, var_1.x, -802f, 309f) - vec4<f32>(var_1.x, var_1.x, -1000f, var_1.x)))))));
}

