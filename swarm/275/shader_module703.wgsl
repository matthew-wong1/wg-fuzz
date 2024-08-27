struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: f32 = 741f;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_4) -> i32 {
    let var_0 = abs(arg_2.a.a.x);
    global1 = array<vec2<f32>, 17>();
    let var_1 = (_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, var_0, var_0, arg_2.c.a.x), vec4<i32>(-40944i, var_0, var_0, arg_2.c.a.x)), vec4<i32>(-21085i, 2147483647i, var_0, var_0)), -select(vec4<i32>(2147483647i, 50505i, var_0, -1i), vec4<i32>(arg_2.b.c.a.x, 30198i, 2147483647i, 1i), arg_3.a.x), vec4<i32>(arg_2.b.c.a.x, var_0, arg_2.b.b.a.x, arg_2.b.b.a.x)) >> (vec4<u32>(~u_input.a, min(_wgslsmith_add_u32(u_input.a, 0u), u_input.a | 20041u), u_input.a, 65091u) % vec4<u32>(32u))) << (max(select(abs(vec4<u32>(21828u, 45386u, u_input.a, 97142u) | vec4<u32>(0u, 4294967295u, 0u, u_input.a)), vec4<u32>(abs(0u), u_input.a, _wgslsmith_mod_u32(0u, 42532u), ~1u), !select(arg_2.d, arg_3.a, arg_2.d.x)), vec4<u32>(select(u_input.a, u_input.a, all(vec2<bool>(arg_3.a.x, true))), 1u | u_input.a, ~u_input.a, ~u_input.a << (u_input.a % 32u))) % vec4<u32>(32u));
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    return ~var_0 << (firstLeadingBit(29247u) % 32u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<Struct_3, 10>();
    let var_0 = -1185f;
    global1 = array<vec2<f32>, 17>();
    let var_1 = ~_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(~66243i, abs(55606i)), func_3(vec2<f32>(811f, 157f), true, Struct_3(Struct_1(vec2<i32>(1i, -23475i)), Struct_2(var_0, Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(-2147483647i, -1i))), Struct_1(vec2<i32>(62352i, -2147483647i)), vec4<bool>(false, false, false, true)), Struct_4(vec4<bool>(true, false, true, false)))), 1i);
    var var_2 = abs(~_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(4294967295u, 1u, 4294967295u)), max(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(u_input.a, arg_0, u_input.a)) << ((vec3<u32>(u_input.a, u_input.a, 0u) ^ vec3<u32>(0u, u_input.a, arg_0)) % vec3<u32>(32u))));
    return Struct_1(vec2<i32>(min(0i, -24047i), var_1));
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    var var_0 = func_2(~(~(u_input.a ^ u_input.a)));
    var_0 = Struct_1(-(firstTrailingBit(vec2<i32>(var_0.a.x, var_0.a.x)) & abs(vec2<i32>(0i, var_0.a.x))) & abs(vec2<i32>(25990i, ~var_0.a.x)));
    var var_1 = vec2<bool>(!any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), false);
    return ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u >> (u_input.a % 32u), _wgslsmith_sub_u32(u_input.a, 4294967295u)), ~(~vec2<u32>(u_input.a, 0u))), select(~firstLeadingBit(vec2<u32>(0u, u_input.a)), (vec2<u32>(50354u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)) >> ((vec2<u32>(5872u, 1u) >> (vec2<u32>(u_input.a, 67543u) % vec2<u32>(32u))) % vec2<u32>(32u)), any(vec4<bool>(false, var_1.x, var_1.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(213f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-945f - 540f))), _wgslsmith_div_f32(560f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 702f), _wgslsmith_f_op_f32(163f * 119f), false)))));
    var var_1 = 0u;
    let var_2 = func_1();
    var var_3 = u_input.a;
    let var_4 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(abs(17341i)), _wgslsmith_div_i32(0i, 1i)), vec2<i32>(func_3(var_0.xz, any(vec4<bool>(false, false, true, true)), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 10u)], Struct_4(vec4<bool>(true, true, false, true))), 1i)));
    var var_5 = vec4<bool>(!(!any(vec2<bool>(true, true))), any(!vec4<bool>(u_input.a != 51799u, any(vec3<bool>(false, false, true)), true, all(vec3<bool>(true, false, true)))), !select(!all(vec4<bool>(false, false, true, false)), var_0.x >= _wgslsmith_f_op_f32(sign(var_0.x)), (var_4.a.x >> (4584u % 32u)) == reverseBits(15069i)), 974f >= var_0.x);
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))) * var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_2, var_2), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, 277u), vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u))), var_2.x), var_2, var_5.yz));
}

