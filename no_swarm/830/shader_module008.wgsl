struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_1(10049i), vec2<f32>(251f, -639f), Struct_1(2147483647i)), Struct_4(Struct_1(-22685i), vec2<f32>(500f, 1061f), Struct_1(-17730i)), Struct_4(Struct_1(19474i), vec2<f32>(1434f, 556f), Struct_1(i32(-2147483648))), Struct_4(Struct_1(-23770i), vec2<f32>(-1019f, 455f), Struct_1(-31809i)), Struct_4(Struct_1(-23204i), vec2<f32>(-888f, 732f), Struct_1(i32(-2147483648))), Struct_4(Struct_1(-76i), vec2<f32>(392f, -549f), Struct_1(-43911i)), Struct_4(Struct_1(25620i), vec2<f32>(-892f, 1574f), Struct_1(1i)), Struct_4(Struct_1(1i), vec2<f32>(-2606f, -2235f), Struct_1(49600i)), Struct_4(Struct_1(-13204i), vec2<f32>(-1823f, -396f), Struct_1(54199i)), Struct_4(Struct_1(i32(-2147483648)), vec2<f32>(956f, 2284f), Struct_1(-8026i)), Struct_4(Struct_1(-1i), vec2<f32>(-1144f, 2598f), Struct_1(0i)), Struct_4(Struct_1(1i), vec2<f32>(-211f, -601f), Struct_1(0i)), Struct_4(Struct_1(1i), vec2<f32>(-959f, -1300f), Struct_1(-1i)), Struct_4(Struct_1(1i), vec2<f32>(1882f, -1033f), Struct_1(-2703i)), Struct_4(Struct_1(-47606i), vec2<f32>(1886f, -457f), Struct_1(-12560i)), Struct_4(Struct_1(i32(-2147483648)), vec2<f32>(1439f, 770f), Struct_1(1i)), Struct_4(Struct_1(17202i), vec2<f32>(967f, 259f), Struct_1(13631i)), Struct_4(Struct_1(-47905i), vec2<f32>(257f, 313f), Struct_1(-13083i)), Struct_4(Struct_1(1i), vec2<f32>(466f, -164f), Struct_1(7325i)), Struct_4(Struct_1(2147483647i), vec2<f32>(-737f, 686f), Struct_1(0i)), Struct_4(Struct_1(-48993i), vec2<f32>(-1291f, 451f), Struct_1(30693i)), Struct_4(Struct_1(-1i), vec2<f32>(731f, -1971f), Struct_1(i32(-2147483648))), Struct_4(Struct_1(64897i), vec2<f32>(807f, 204f), Struct_1(-38356i)), Struct_4(Struct_1(6181i), vec2<f32>(1000f, -187f), Struct_1(23756i)), Struct_4(Struct_1(-26026i), vec2<f32>(-2233f, -1002f), Struct_1(38641i)), Struct_4(Struct_1(509i), vec2<f32>(-666f, 655f), Struct_1(-37291i)), Struct_4(Struct_1(1i), vec2<f32>(-101f, 153f), Struct_1(-25529i)), Struct_4(Struct_1(-55826i), vec2<f32>(-1293f, -725f), Struct_1(-81153i)), Struct_4(Struct_1(i32(-2147483648)), vec2<f32>(686f, -1000f), Struct_1(0i)), Struct_4(Struct_1(-20194i), vec2<f32>(419f, -673f), Struct_1(-1i)));

var<private> global2: array<i32, 26>;

var<private> global3: array<Struct_1, 16>;

var<private> global4: vec3<bool>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>) -> i32 {
    let var_0 = ~(45788u << ((countOneBits(_wgslsmith_div_u32(11138u, u_input.a)) & (u_input.a | ~0u)) % 32u));
    global4 = select(!arg_1, !select(arg_1, vec3<bool>(false, true, select(false, arg_1.x, arg_1.x)), arg_1), arg_1);
    let var_1 = Struct_1(abs(0i));
    global3 = array<Struct_1, 16>();
    let var_2 = ~u_input.b.wwx;
    return ~(~(i32(-1i) * -34920i));
}

fn func_2() -> vec2<bool> {
    global0 = !(true && select(global4.x, !global4.x, global4.x));
    var var_0 = Struct_3(Struct_1(func_3(vec2<f32>(828f, 211f), vec3<bool>(true, global4.x, false)) & _wgslsmith_clamp_i32(~0i, -global2[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i))), max(_wgslsmith_mult_u32(~abs(14939u), ~u_input.a | ~u_input.a), 1u));
    let var_1 = var_0.b;
    let var_2 = global4.x;
    var var_3 = -3461i;
    return vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -403f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(667f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-718f)), _wgslsmith_f_op_f32(step(301f, -161f))))), any(vec3<bool>(global4.x, (global2[_wgslsmith_index_u32(1u, 26u)] != u_input.b.x) | !global4.x, global4.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> Struct_1 {
    return Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, 83644u)) ^ 1u, 26u)] ^ arg_3);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.a;
    return func_4(firstLeadingBit(_wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.a, 82u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) | ~vec4<u32>(39165u, u_input.a, u_input.a, 61686u), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(5905u, 0u, u_input.a, u_input.a)), countOneBits(vec4<u32>(u_input.a, 20852u, u_input.a, u_input.a))))), vec2<bool>(true, any(func_2())), select(true, global4.x, false), ~_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.b.x, 12998i, u_input.b.x), u_input.b), _wgslsmith_sub_i32(arg_0, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], u_input.b.x, u_input.b.x, -15354i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~abs(global2[_wgslsmith_index_u32(reverseBits(u_input.a), 26u)] << (_wgslsmith_add_u32(u_input.a, 42616u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, -992f, 953f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-591f, 1000f, -295f), vec3<f32>(-264f, 415f, 510f))))), !(!(!vec3<bool>(true, global4.x, global4.x))));
    var var_1 = true;
    global4 = !select(vec3<bool>(!(global4.x || false), select(global4.x, any(global4.yx), true), all(vec2<bool>(true, true))), !select(select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(true, global4.x, global4.x), global4.x), select(vec3<bool>(true, false, global4.x), vec3<bool>(false, global4.x, global4.x), vec3<bool>(false, false, global4.x)), global4.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 22004u, u_input.a, u_input.a)) > u_input.a);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f - -563f)), _wgslsmith_f_op_f32(sign(522f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(368f, 417f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(420f, -779f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1707f, 119f))))));
    var_0 = Struct_1(firstTrailingBit(abs(var_0.a)));
    let var_3 = -_wgslsmith_sub_i32(-u_input.b.x, 13005i >> (~(~u_input.a) % 32u));
    global2 = array<i32, 26>();
    global3 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(func_3(vec2<f32>(var_2.x, -1653f), vec3<bool>(global4.x, false, true)), global2[_wgslsmith_index_u32(u_input.a, 26u)] & -12036i, 0i)) | u_input.b.zzy, ~firstTrailingBit(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(44827u, u_input.a, u_input.a)), vec3<u32>(0u, 19213u, 5535u) << (vec3<u32>(62666u, 30150u, u_input.a) % vec3<u32>(32u)), !vec3<bool>(global4.x, global4.x, false))), 4294967295u);
}

