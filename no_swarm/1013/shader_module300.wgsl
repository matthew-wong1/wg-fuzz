struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: Struct_2 = Struct_2(1u, Struct_1(vec4<f32>(-847f, 917f, 508f, -422f), -184f, 1i, -701f, vec4<bool>(false, false, true, true)), vec4<f32>(1582f, 1092f, 1000f, 238f), Struct_1(vec4<f32>(-377f, 457f, 1334f, 333f), 1455f, -6750i, 432f, vec4<bool>(false, true, false, true)), 1262f);

var<private> global2: i32;

var<private> global3: Struct_1;

var<private> global4: array<bool, 17>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, arg_2.x | ~u_input.d, arg_1.x >> (4294967295u % 32u), arg_2.x), (min(arg_1, vec4<u32>(global1.a, global1.a, 4294967295u, arg_1.x)) >> (_wgslsmith_clamp_vec4_u32(arg_1, arg_1, arg_1 | arg_1) % vec4<u32>(32u))) ^ (~max(vec4<u32>(global1.a, u_input.d, arg_1.x, 1u), vec4<u32>(global1.a, u_input.a.x, u_input.d, 0u)) & (_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, global1.a, 4294967295u, arg_1.x), vec4<u32>(85290u, 33708u, 0u, 0u)) << (~vec4<u32>(1u, global1.a, arg_2.x, arg_1.x) % vec4<u32>(32u)))));
    var var_1 = i32(-1i) * -21392i;
    var var_2 = min(vec2<u32>(_wgslsmith_add_u32(global1.a | 43158u, (arg_2.x << (var_0.x % 32u)) << (4294967295u % 32u)), u_input.c), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(var_0.x, arg_2.x)), vec2<u32>(firstLeadingBit(global1.a), ~_wgslsmith_mult_u32(7283u, arg_1.x))));
    var var_3 = (_wgslsmith_dot_vec3_u32(min(var_0.zzy, vec3<u32>(23547u, u_input.c, global1.a)), select(vec3<u32>(global1.a, var_2.x, global1.a), reverseBits(vec3<u32>(28340u, global1.a, 4294967295u)), vec3<bool>(false, global1.b.e.x, global3.e.x))) != 3277u) | false;
    let var_4 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1.x, arg_2.x | 2941u), abs(var_0.yzy)), vec3<u32>(54234u, arg_1.x, u_input.a.x));
    return global3.b;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> f32 {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    var var_0 = global1.d;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.d), var_0.a.x));
}

fn func_2() -> Struct_2 {
    global3 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.d + _wgslsmith_f_op_f32(-1879f - 765f)), global1.c.x, global3.b, _wgslsmith_f_op_f32(func_4(0i, Struct_1(vec4<f32>(435f, global1.e, global1.b.a.x, global1.e), global3.a.x, 33207i, 1250f, global3.e), true, _wgslsmith_f_op_f32(func_3(-1241f, vec4<u32>(4294967295u, global1.a, 2159u, 12180u), vec3<u32>(u_input.c, u_input.a.x, global1.a), -7259i))))), global1.d.a), _wgslsmith_f_op_f32(abs(-1000f)), min(~(-1i | global3.c), 32961i) ^ -1i, _wgslsmith_f_op_f32(-528f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.c.x))))), vec4<bool>(!global4[_wgslsmith_index_u32(58331u, 17u)] && true, true, global1.d.e.x, !(all(vec3<bool>(false, true, false)) | global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 67778u, 4294967295u, global1.a), vec4<u32>(4294967295u, 17403u, global1.a, global1.a)), 17u)])));
    return Struct_2(~global1.a, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b, 160f, 708f, _wgslsmith_f_op_f32(ceil(global1.c.x))), global3.a, global1.b.e)), global3.a.x, -80632i, global1.b.b, vec4<bool>(select(false, all(vec3<bool>(global4[_wgslsmith_index_u32(0u, 17u)], true, false)), true), !any(global3.e.xw), global1.d.e.x, global1.b.e.x)), vec4<f32>(138f, _wgslsmith_f_op_f32(-274f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(954f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f)), 155f), Struct_1(vec4<f32>(global3.b, global1.c.x, global1.b.a.x, global3.b), _wgslsmith_f_op_f32(func_3(-1533f, vec4<u32>(countOneBits(247u), ~0u, ~u_input.c, ~global1.a), ~(~vec3<u32>(0u, 1u, global1.a)), ~global3.c)), abs(firstTrailingBit(-1i)), -482f, select(vec4<bool>(!global3.e.x, any(global3.e.yxy), true, !global1.d.e.x), vec4<bool>(false, global4[_wgslsmith_index_u32(73716u, 17u)], !global4[_wgslsmith_index_u32(25461u, 17u)], all(vec4<bool>(false, global1.d.e.x, true, global3.e.x))), global3.e.x)), 1000f);
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    global0 = array<Struct_2, 31>();
    global4 = array<bool, 17>();
    var var_0 = func_2();
    global1 = Struct_2(0u, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, arg_0.e, -103f, arg_0.e))) * global1.c)), _wgslsmith_f_op_f32(-global1.c.x), u_input.b.x, -581f, select(vec4<bool>(true, false, any(global3.e), true | global1.b.e.x), func_2().b.e, !global3.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1963f) - _wgslsmith_f_op_f32(-1280f * 754f)), 486f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.d * arg_0.e)))), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.c), -508f, -_wgslsmith_add_i32(~u_input.b.x, var_0.d.c >> (arg_0.a % 32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e))))), !(!select(arg_0.d.e, var_0.d.e, vec4<bool>(arg_0.d.e.x, false, global1.b.e.x, var_0.b.e.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.e - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global3.d)), _wgslsmith_f_op_f32(-global3.a.x)))))));
    var var_1 = Struct_2(1u, func_2().b, vec4<f32>(-1634f, -144f, -1473f, _wgslsmith_f_op_f32(806f - -396f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(-global1.d.d), _wgslsmith_f_op_f32(func_4(var_0.b.c, Struct_1(vec4<f32>(353f, var_0.e, -1742f, -192f), -478f, 2147483647i, global3.b, vec4<bool>(false, var_0.d.e.x, global1.d.e.x, false)), arg_0.b.e.x, 1000f)), _wgslsmith_f_op_f32(abs(arg_0.d.a.x)))), 840f, arg_0.d.c, _wgslsmith_div_f32(-801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.b))), vec4<bool>(false, _wgslsmith_f_op_f32(step(-2369f, 1308f)) > _wgslsmith_f_op_f32(f32(-1f) * -495f), true, var_0.d.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - var_0.c.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d.a.x)))) + _wgslsmith_f_op_f32(func_2().e * -135f)));
    return StorageBuffer(vec3<f32>(1480f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1254f - arg_0.b.b))), _wgslsmith_f_op_f32(-global3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    let x = u_input.a;
    s_output = func_1(Struct_2(firstTrailingBit(abs(~global1.a)), global1.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.a * global3.a))), global3.a), global1.b, -359f));
}

