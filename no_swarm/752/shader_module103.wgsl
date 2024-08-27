struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(2147483647i, -25958i, -3186i));

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(-1i, vec2<f32>(295f, -1476f), 5774u), Struct_1(1i, vec2<f32>(1000f, 1503f), 49407u), 292f, Struct_1(1i, vec2<f32>(-856f, -786f), 1u), Struct_1(-1969i, vec2<f32>(-1154f, -1268f), 4294967295u)));

var<private> global2: array<vec3<i32>, 1>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_mod_u32(20309u, u_input.a))), max(vec2<u32>(1u, 1u), ~min(vec2<u32>(65096u, u_input.a), vec2<u32>(u_input.a, u_input.a)) >> (~(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(87431u, u_input.a)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-925f, -743f, -215f) - vec3<f32>(225f, 1776f, 364f))))))));
    var var_2 = vec2<bool>(select(any(vec4<bool>(false, true, false, false)), 0i != _wgslsmith_dot_vec4_i32(vec4<i32>(40274i, 4297i, -20772i, 0i), vec4<i32>(-1i, 1i, -2147483647i, -73496i)), select(true, true, true)) | true, false);
    var var_3 = global1[_wgslsmith_index_u32(~40722u, 1u)];
    global0 = array<vec3<i32>, 1>();
    return u_input.a > _wgslsmith_sub_u32(abs(~(~var_3.e.c)), 1u);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    global2 = array<vec3<i32>, 1>();
    var var_0 = select(_wgslsmith_add_vec4_i32(~(~(~vec4<i32>(-24526i, -2147483647i, 1i, 9228i))), ~(vec4<i32>(-1i) * -vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), vec4<i32>(14830i, _wgslsmith_clamp_i32(abs(2147483647i) | (-20151i << (u_input.a % 32u)), ~arg_0.x, -28656i), 699i, arg_0.x), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, true))));
    var var_1 = Struct_1(min(var_0.x, _wgslsmith_mod_i32(var_0.x, ~_wgslsmith_div_i32(-2147483647i, arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1266f, 406f)))), select(countOneBits(u_input.a >> (~u_input.a % 32u)), ~42920u << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), func_3()));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(arg_0, countOneBits(arg_0)), var_1.b, 11743u);
    global0 = array<vec3<i32>, 1>();
    return _wgslsmith_dot_vec2_i32(arg_0.zz, select(arg_0.yx, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.a, var_2.a), vec2<i32>(var_2.a, -27733i), ~vec2<i32>(var_2.a, arg_0.x)), true));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec3<u32> {
    global2 = array<vec3<i32>, 1>();
    let var_0 = ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(firstLeadingBit(-19724i), arg_0, 0i, -25436i), ~abs(vec4<i32>(-58096i, 1i, -2147483647i, arg_0)), vec4<bool>(all(vec3<bool>(arg_1, false, arg_1)), true, arg_1, false)), vec4<i32>(arg_0, -func_2(global2[_wgslsmith_index_u32(u_input.a, 1u)]), _wgslsmith_div_i32(~arg_0, 4266i), arg_0));
    global1 = array<Struct_2, 1>();
    let var_1 = all(vec2<bool>(true, false));
    var var_2 = u_input.a;
    return vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(max(_wgslsmith_sub_vec3_u32(vec3<u32>(31076u, 61490u, 4294967295u), vec3<u32>(u_input.a, 65018u, 1u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), firstLeadingBit(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)))), u_input.a << (u_input.a % 32u), countOneBits(_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, u_input.a), vec2<u32>(0u, u_input.a)) | ~vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(4294967295u, 0u), vec2<u32>(21189u, u_input.a), arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(~(~(~(~vec3<u32>(0u, u_input.a, 4294967295u)))), _wgslsmith_add_vec3_u32(~vec3<u32>(~u_input.a, ~4294967295u, 81992u), ~func_1(-2147483647i, true)));
    global2 = array<vec3<i32>, 1>();
    var var_1 = vec3<i32>(select(-select(-44786i, -1i, false), countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -1649i, 13994i), vec3<i32>(0i, -23940i, 0i) & global0[_wgslsmith_index_u32(25986u, 1u)])), true), _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(~(-1i), 1i)), -14178i), max(~32644i, 2147483647i));
    let var_2 = _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_1.x, 0i, var_1.x, var_1.x)) >> (vec4<u32>(u_input.a, 10487u, 4294967295u, 0u) % vec4<u32>(32u)), ~vec4<i32>(var_1.x, var_1.x, -6036i, var_1.x) ^ vec4<i32>(var_1.x, -34863i, 2147483647i, -42026i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, _wgslsmith_sub_i32(-49082i, min(var_1.x, var_1.x)), _wgslsmith_div_i32(firstTrailingBit(-13195i), 36788i ^ var_1.x), 2147483647i), -_wgslsmith_mod_vec4_i32(-vec4<i32>(var_1.x, 24068i, -4492i, 1i), vec4<i32>(16232i, var_1.x, var_1.x, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1273f, 458f, 657f, -998f)))))))), _wgslsmith_div_vec4_i32(-(vec4<i32>(var_2, var_2, var_1.x, -1i) ^ vec4<i32>(var_1.x, 23071i, var_2, var_2)), ~abs(vec4<i32>(2147483647i, var_2, var_1.x, var_2))) | (_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -11080i, var_2, 0i), vec4<i32>(var_1.x, -18679i, var_1.x, 2466i)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_1.x, 0i, -38140i), vec4<i32>(var_1.x, var_1.x, var_2, var_1.x))) | (vec4<i32>(1i, var_2, var_2, var_1.x) >> ((vec4<u32>(u_input.a, var_0.x, 40663u, u_input.a) & vec4<u32>(u_input.a, var_0.x, u_input.a, var_0.x)) % vec4<u32>(32u)))), ~(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(87301u, 1u, 23419u, 68917u), vec4<u32>(80963u, 28674u, u_input.a, var_0.x)), abs(vec4<u32>(23389u, 0u, 49788u, var_0.x))) >> (vec4<u32>(~var_0.x, ~u_input.a, 80748u, ~u_input.a) % vec4<u32>(32u))));
}

