struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(vec2<bool>(false, false), Struct_3(Struct_1(9161u))), Struct_5(vec2<bool>(false, true), Struct_3(Struct_1(1u))), Struct_5(vec2<bool>(true, false), Struct_3(Struct_1(82532u))), Struct_5(vec2<bool>(false, false), Struct_3(Struct_1(4294967295u))), Struct_5(vec2<bool>(false, true), Struct_3(Struct_1(4294967295u))), Struct_5(vec2<bool>(true, false), Struct_3(Struct_1(1u))), Struct_5(vec2<bool>(true, false), Struct_3(Struct_1(87888u))));

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(1u), Struct_1(1u)), Struct_2(Struct_1(1u), Struct_1(32885u)), Struct_2(Struct_1(94508u), Struct_1(1u)), Struct_2(Struct_1(1u), Struct_1(19621u)), Struct_2(Struct_1(8806u), Struct_1(0u)), Struct_2(Struct_1(4294967295u), Struct_1(1u)), Struct_2(Struct_1(5426u), Struct_1(43881u)), Struct_2(Struct_1(1u), Struct_1(1u)), Struct_2(Struct_1(4294967295u), Struct_1(0u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = arg_3.a;
    let var_1 = _wgslsmith_f_op_f32(round(-1547f));
    let var_2 = vec3<bool>(!(!any(vec2<bool>(true, true))), true, true);
    let var_3 = Struct_4(vec4<bool>(false, var_2.x, any(!(!vec3<bool>(var_2.x, true, false))), false));
    var_0 = arg_3.a;
    return vec2<bool>(true, !var_2.x);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(~u_input.c.x);
    let var_1 = Struct_3(Struct_1(u_input.b.x));
    var var_2 = Struct_3(var_1.a);
    var_2 = var_1;
    var_0 = Struct_1(1u >> ((abs(~var_1.a.a) << (var_1.a.a % 32u)) % 32u));
    return select(select(vec2<bool>(true, true), select(!func_3(80042u, var_0.a, vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), Struct_3(var_1.a)), vec2<bool>(true, true), true), !(firstTrailingBit(u_input.a) == 1i)), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec2<bool>(true, !(all(vec2<bool>(false, true)) && (var_0.a != var_2.a.a))));
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global0 = array<Struct_5, 7>();
    global0 = array<Struct_5, 7>();
    let var_0 = ~(~u_input.c.x);
    global1 = array<Struct_2, 9>();
    var var_1 = vec4<bool>(arg_0, false, true, !any(func_2()));
    return func_2();
}

fn func_4(arg_0: vec2<bool>) -> u32 {
    var var_0 = 35307u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1041f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -532f) - -100f)));
    var var_2 = _wgslsmith_add_vec4_i32(select(min(select(-vec4<i32>(u_input.a, -2147483647i, 0i, 79214i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(u_input.a, 5935i, u_input.a, 8785i)), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), -vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), max(abs(-vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), countOneBits(firstLeadingBit(vec4<i32>(-20489i, -9649i, u_input.a, u_input.a)))), true), firstLeadingBit(select(min(~vec4<i32>(u_input.a, 2147483647i, -41237i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -23976i, 36777i, u_input.a))), (vec4<i32>(u_input.a, -44891i, 1i, 1i) >> (u_input.b % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u)), u_input.a > u_input.a)));
    global0 = array<Struct_5, 7>();
    var_0 = reverseBits(u_input.c.x);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(true));
    let var_1 = global1[_wgslsmith_index_u32(1u << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b.x, 66574u), ~57701u), u_input.c.xx ^ reverseBits(u_input.c.zz)), vec2<u32>(abs(_wgslsmith_clamp_u32(0u, 33070u, var_0)), ~(~4294967295u))) % 32u), 9u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1219f, _wgslsmith_f_op_f32(f32(-1f) * -953f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(866f)), _wgslsmith_f_op_f32(f32(-1f) * -1455f))))));
    var var_3 = var_0;
    var_3 = 1u;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(891f)) - 317f)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstTrailingBit(vec2<i32>(-2985i, -18682i))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 + var_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -1181f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1321f)), _wgslsmith_f_op_f32(exp2(var_4)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, true)), -1100f)) * var_2.x)), select(~u_input.a, 1i, _wgslsmith_f_op_f32(-var_4) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x)))), -31996i);
}

