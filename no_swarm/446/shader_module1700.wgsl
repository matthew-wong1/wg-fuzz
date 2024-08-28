struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(5933u, 1u, 0u));

var<private> global1: vec4<u32>;

var<private> global2: vec2<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> f32 {
    let var_0 = arg_0;
    global0 = Struct_1(var_0.a);
    global1 = reverseBits(max(vec4<u32>(31154u, global0.a.x, global1.x, global1.x), vec4<u32>(4294967295u, 1u, 1u, arg_0.a.x)) | _wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, global0.a.x, var_0.a.x, 0u), vec4<u32>(arg_0.a.x, u_input.a.x, 0u, u_input.a.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), vec4<u32>(global0.a.x, 1u, 16052u, 0u))) << (max(vec4<u32>(_wgslsmith_add_u32(arg_0.a.x, global1.x), _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mod_u32(1u, 4294967295u)), countOneBits(reverseBits(global0.a.x)), reverseBits(4294967295u)), vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(global0.a, global0.a)), _wgslsmith_dot_vec3_u32(countOneBits(u_input.a), ~vec3<u32>(arg_0.a.x, 4294967295u, var_0.a.x)), abs(~7218u), select(34815u, 52017u, true))) % vec4<u32>(32u));
    var var_1 = Struct_1(~vec3<u32>(_wgslsmith_mod_u32(~global0.a.x, _wgslsmith_mod_u32(arg_0.a.x, 1u)), u_input.a.x | ~u_input.a.x, global1.x));
    let var_2 = _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(112625u, var_1.a.x ^ ~1u, reverseBits(1u)));
    return 707f;
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = Struct_1(~((u_input.a | ~global0.a) << (~vec3<u32>(global0.a.x, 4294967295u, 1u) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f - 678f)) * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(u_input.a.x, 4294967295u, global1.x)), any(vec2<bool>(true, global2.x)), reverseBits(u_input.c)))) * 1431f), -983f);
    global2 = vec2<bool>(!any(!vec4<bool>(true, true, global2.x, global2.x)) && true, any(vec4<bool>(true, global2.x, false, global2.x)));
    let var_2 = var_0;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-302f)), -1738f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1881f, -451f)) - 1007f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)))) - -1499f));
    return _wgslsmith_f_op_vec2_f32(step(var_3.zz, _wgslsmith_f_op_vec2_f32(-var_3.xz)));
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_i32(u_input.b.x, 1i)));
    var var_1 = ~(~(-57156i));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-605f * -1983f), _wgslsmith_f_op_f32(floor(-1181f)), -1235f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1043f, 901f, 807f))) * vec3<f32>(var_0.x, 1000f, var_0.x))))));
    var var_3 = Struct_1(~abs(select(_wgslsmith_mod_vec3_u32(global1.wxz, vec3<u32>(3666u, global1.x, 4294967295u)), global0.a, false)));
    let var_4 = vec4<bool>(true, global2.x, false, ((65728u ^ firstTrailingBit(global1.x)) <= 39803u) & true);
    return ~abs(_wgslsmith_mult_vec3_u32(global1.zwz, select(~u_input.a, select(vec3<u32>(53321u, global0.a.x, 8694u), global1.zwz, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((countOneBits(vec3<u32>(u_input.a.x, global0.a.x, global1.x) >> (u_input.a % vec3<u32>(32u))) << (func_1() % vec3<u32>(32u))) << (vec3<u32>(0u, 64213u, ~(~4294967295u)) % vec3<u32>(32u)));
    let var_1 = 48361u;
    let var_2 = Struct_1(select(var_0.a, _wgslsmith_add_vec3_u32(~max(global0.a, vec3<u32>(11553u, u_input.a.x, 4294967295u)), ~vec3<u32>(global1.x, var_1, 4294967295u)), !select(vec3<bool>(true, global2.x, global2.x), select(vec3<bool>(false, global2.x, true), vec3<bool>(true, global2.x, global2.x), true), true)));
    let var_3 = select(vec4<u32>(firstLeadingBit(~u_input.a.x), 12489u, _wgslsmith_add_u32(countOneBits(1u), select(37382u, 6294u, global2.x)), ~(~4294967295u)) >> (~_wgslsmith_sub_vec4_u32(min(vec4<u32>(var_1, 4294967295u, 44112u, 1u), vec4<u32>(19846u, 40902u, 46867u, 53100u)), vec4<u32>(48463u, 10561u, 13460u, var_1) << (vec4<u32>(27005u, 0u, var_0.a.x, var_1) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(var_0.a.x, 59182u >> (_wgslsmith_mult_u32(~var_1, 1u) % 32u), 4294967295u, _wgslsmith_clamp_u32(1u | ~global0.a.x, ~firstLeadingBit(17304u), _wgslsmith_clamp_u32(28986u, var_0.a.x, var_1))), select(!vec4<bool>(all(vec2<bool>(global2.x, global2.x)), global2.x, true, global2.x), select(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), any(vec2<bool>(false, global2.x))), !vec4<bool>(true, true, global2.x, global2.x), select(select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(global2.x, true, global2.x, true), global2.x), vec4<bool>(global2.x, global2.x, true, true), any(vec2<bool>(global2.x, false)))), global2.x));
    global0 = Struct_1(global1.wwx);
    let var_4 = true;
    var var_5 = vec3<bool>(false, any(vec3<bool>(!all(vec4<bool>(false, true, false, global2.x)), all(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, var_4), vec2<bool>(false, true))), any(select(vec4<bool>(false, true, true, global2.x), vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(global2.x, var_4, global2.x, global2.x))))), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(4294967295u, 1u, select(_wgslsmith_clamp_u32(firstLeadingBit(0u), 1u, ~var_0.a.x), var_1, any(vec2<bool>(var_4, var_5.x)))), _wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_add_i32(0i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.d, u_input.b.x), u_input.b), -54018i), -(~vec3<i32>(u_input.c.x, u_input.c.x, 1i))));
}

