struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, false, vec3<u32>(0u, 63740u, 60424u)), Struct_1(false, false, vec3<u32>(60069u, 1u, 9071u)), Struct_1(false, false, vec3<u32>(96470u, 6377u, 73116u)), Struct_1(false, false, vec3<u32>(4294967295u, 1u, 66567u)), Struct_1(true, true, vec3<u32>(7128u, 4294967295u, 34453u)), Struct_1(false, false, vec3<u32>(0u, 16136u, 4294967295u)), Struct_1(true, false, vec3<u32>(35711u, 0u, 0u)), Struct_1(true, true, vec3<u32>(46469u, 68286u, 4294967295u)), Struct_1(true, true, vec3<u32>(4294967295u, 4294967295u, 14431u)), Struct_1(true, true, vec3<u32>(4244u, 1u, 4294967295u)), Struct_1(false, true, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(true, false, vec3<u32>(1u, 56639u, 17643u)), Struct_1(false, false, vec3<u32>(106649u, 17435u, 60442u)), Struct_1(true, false, vec3<u32>(4294967295u, 4294967295u, 86147u)), Struct_1(false, false, vec3<u32>(0u, 51202u, 1u)), Struct_1(true, false, vec3<u32>(5950u, 81803u, 16400u)), Struct_1(false, false, vec3<u32>(14172u, 0u, 29949u)), Struct_1(false, true, vec3<u32>(13515u, 22912u, 33788u)), Struct_1(false, false, vec3<u32>(87229u, 1u, 1u)), Struct_1(false, false, vec3<u32>(1308u, 5722u, 104796u)), Struct_1(false, false, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(false, true, vec3<u32>(81885u, 1u, 0u)), Struct_1(false, true, vec3<u32>(1u, 22942u, 87351u)), Struct_1(true, true, vec3<u32>(4294967295u, 0u, 33448u)), Struct_1(false, false, vec3<u32>(0u, 34161u, 14007u)), Struct_1(true, false, vec3<u32>(10171u, 1u, 1u)), Struct_1(true, false, vec3<u32>(24169u, 46087u, 41381u)), Struct_1(false, true, vec3<u32>(91276u, 4294967295u, 73089u)), Struct_1(true, false, vec3<u32>(0u, 0u, 17091u)), Struct_1(true, false, vec3<u32>(20988u, 48441u, 1u)), Struct_1(false, false, vec3<u32>(0u, 29250u, 0u)), Struct_1(false, true, vec3<u32>(0u, 69833u, 28634u)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = vec2<bool>(false, (u_input.a >> (_wgslsmith_div_u32(~83147u, 1u) % 32u)) > _wgslsmith_mod_i32(-1i << (max(arg_1, 16601u) % 32u), 1i));
    let var_1 = ~0i ^ (firstLeadingBit(u_input.a | 4606i) >> (~20008u % 32u));
    global0 = array<vec4<i32>, 28>();
    var var_2 = Struct_1(all(vec2<bool>(true, true)), arg_0.a, vec3<u32>(1u, (45891u ^ u_input.b) & u_input.b, 30103u) & ~_wgslsmith_add_vec3_u32(~arg_0.c, ~arg_0.c));
    global0 = array<vec4<i32>, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1600f * 329f), 759f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2653f)), arg_0.b)));
}

fn func_3() -> bool {
    global0 = array<vec4<i32>, 28>();
    global1 = array<Struct_1, 32>();
    global0 = array<vec4<i32>, 28>();
    var var_0 = _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(6797u, u_input.b, u_input.b), vec3<u32>(22489u, 0u, u_input.b)), vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(82381u, u_input.b, 63899u), vec3<u32>(u_input.b, u_input.b, u_input.b)) ^ vec3<u32>(4294967295u, 677u, u_input.b))), 32u)], u_input.b));
    var var_1 = !(!all(vec4<bool>(false, true, false, all(vec3<bool>(false, true, true)))));
    return any(!(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: f32) -> vec2<i32> {
    global0 = array<vec4<i32>, 28>();
    var var_0 = select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), select(vec4<bool>(true, all(vec4<bool>(false, true, false, true)), true, 29433i <= arg_1), vec4<bool>(all(vec2<bool>(false, true)), true, true, true), func_3()), vec4<bool>(false, true, true, true)), select(vec4<bool>(all(vec2<bool>(true, true)), false, !(arg_0 >= 428f), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 307f == arg_0), any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), all(vec4<bool>(false, true, true, true))))), false);
    return -select(abs(~select(vec2<i32>(-2985i, arg_2), vec2<i32>(arg_2, arg_2), var_0.wz)), vec2<i32>(_wgslsmith_add_i32(-arg_2, firstTrailingBit(arg_2)), 20306i), vec2<bool>(true, true));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<u32>) -> StorageBuffer {
    var var_0 = vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) != true, all(vec3<bool>(any(vec2<bool>(true, false)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), any(vec2<bool>(true, true)))), false, true);
    var var_1 = global1[_wgslsmith_index_u32(53445u, 32u)];
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f - -1038f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(0u, 32u)], 0u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-613f, 1315f)))), -arg_0.x <= ~0i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(true, var_1.a, arg_1), ~6874u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1172f, -1875f))))))));
    var var_3 = ~(~(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, arg_1.x, 102652u, 110084u), vec4<u32>(52854u, 4641u, 101009u, var_1.c.x)), vec4<u32>(arg_1.x, 4294967295u, u_input.b, var_1.c.x))));
    var var_4 = global1[_wgslsmith_index_u32(10750u, 32u)];
    return StorageBuffer(~var_1.c.x, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 32>();
    let var_0 = vec2<bool>(any(vec3<bool>(true, true, true)), u_input.a >= 1i);
    global1 = array<Struct_1, 32>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1107f + -116f))) + -567f);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(var_0.x, var_0.x, vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~32302u)))), var_1));
    var var_3 = (~(~select(vec4<u32>(72127u, 0u, 4294967295u, 19238u), vec4<u32>(0u, u_input.b, u_input.b, u_input.b), var_0.x)) >> ((_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 69568u, u_input.b, u_input.b), vec4<u32>(1256u, 1u, u_input.b, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 40188u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 49688u))) & ~(~vec4<u32>(0u, 4294967295u, 47531u, u_input.b))) % vec4<u32>(32u))) & ~(vec4<u32>(firstTrailingBit(69871u), 1u, 4294967295u, _wgslsmith_mult_u32(4294967295u, u_input.b)) >> (vec4<u32>(33285u, select(1u, u_input.b, true), ~u_input.b, u_input.b) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = func_4(func_2(var_2, _wgslsmith_div_i32(2147483647i, -u_input.a), abs(-u_input.a), -1021f), var_3.wyz);
}

