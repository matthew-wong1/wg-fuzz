struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26>;

var<private> global1: Struct_1;

var<private> global2: i32 = -1i;

var<private> global3: Struct_2;

var<private> global4: vec2<i32> = vec2<i32>(38720i, i32(-2147483648));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    return Struct_2(global3.d, global3.b, vec4<u32>(~(~u_input.a), arg_0.x, ~_wgslsmith_mult_u32(~1u, ~u_input.d), u_input.a), global3.a);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    global1 = arg_1.d;
    var var_0 = ~(_wgslsmith_mult_vec2_u32(vec2<u32>(60487u, 4294967295u), reverseBits(_wgslsmith_mod_vec2_u32(arg_1.c.yy, arg_1.c.zz))) | vec2<u32>(~arg_2.x ^ 0u, ~13078u));
    global3 = arg_1;
    let var_1 = any(vec2<bool>(true, true));
    let var_2 = global3.d;
    return 1u;
}

fn func_1() -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(abs(2147483647i), global4.x) >> (0u % 32u), _wgslsmith_dot_vec2_i32(u_input.c & u_input.c, select(-vec2<i32>(-27689i, 2147483647i), vec2<i32>(21948i, u_input.b), any(vec4<bool>(false, global1.a, true, true))))) >> (countOneBits(vec2<u32>(91389u, func_3(global3.c.x, func_2(global3.c.zxx), global3.c.wy))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 510f)));
    global2 = firstLeadingBit(global4.x);
    var var_2 = func_2(~abs(_wgslsmith_add_vec3_u32(~vec3<u32>(global3.c.x, 67271u, u_input.a), ~global3.c.zzz)));
    var var_3 = Struct_2(Struct_1(global1.a), Struct_1(var_2.c.x != ~var_2.c.x), func_2(vec3<u32>((4294967295u ^ u_input.d) << (_wgslsmith_dot_vec2_u32(global3.c.zx, vec2<u32>(global3.c.x, 28178u)) % 32u), global3.c.x, ~select(u_input.d, 51354u, global1.a))).c, Struct_1(false));
    return var_2.c.x << (((~func_3(1u, Struct_2(global3.a, global3.a, vec4<u32>(59333u, 0u, global3.c.x, global3.c.x), Struct_1(true)), var_3.c.wy) >> (var_3.c.x % 32u)) | var_3.c.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~(~max(~u_input.d, _wgslsmith_add_u32(u_input.d, 1u))), global3.c.x, func_1());
    var var_1 = global3.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-723f, 1000f)), _wgslsmith_div_f32(-691f, 413f)))))));
    global4 = select(-(~(~vec2<i32>(u_input.b, 31436i))), select(vec2<i32>(-(~0i), _wgslsmith_clamp_i32(-2147483647i >> (var_1.x % 32u), global4.x, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(global3.c.x, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]))), vec2<i32>(1i, -(~2147483647i)), vec2<bool>(!(true && global3.a.a), !global1.a && true)), true);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-191f * 995f) + _wgslsmith_f_op_f32(sign(1037f))))), var_2));
    global4 = -(~reverseBits(u_input.c));
    global1 = Struct_1(true);
    global4 = _wgslsmith_mod_vec2_i32(-(vec2<i32>(-21040i, 1i) & vec2<i32>(global4.x, -1i)), -u_input.c) | (-vec2<i32>(~(-36231i), max(u_input.b, 0i)) >> (~vec2<u32>(_wgslsmith_dot_vec4_u32(global3.c, vec4<u32>(0u, 4214u, global3.c.x, 118006u)), _wgslsmith_mod_u32(var_0.x, 84885u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~21341u | ~_wgslsmith_mult_u32(0u, var_0.x ^ 36119u), var_2, vec2<i32>(u_input.c.x, _wgslsmith_add_i32(i32(-1i) * -1i, -2147483647i)), _wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(-u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 20469i), -u_input.c))), global3.c.x);
}

