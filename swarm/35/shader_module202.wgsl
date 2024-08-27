struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(46968u, 4294967295u));

var<private> global2: f32;

var<private> global3: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = arg_0;
    return vec3<u32>(_wgslsmith_dot_vec2_u32(~(~var_0.a), global1.a), 4294967295u, firstTrailingBit(~arg_3.a.x | 4294967295u)) & (vec3<u32>(abs(firstTrailingBit(var_0.a.x)), ~arg_3.a.x, 32698u) & reverseBits(vec3<u32>(u_input.a, 0u, 25907u)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = ~(-reverseBits(abs(-vec2<i32>(2147483647i, arg_0))));
    global0 = !(!(!vec3<bool>(true, global0.x, global0.x)));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(59556u, u_input.a), 4294967295u, _wgslsmith_div_u32(~1u, _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(32244u, arg_2.a.x, 9915u)) << (~1u % 32u)), 0u & firstLeadingBit(global1.a.x ^ 45240u)), abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 1u, 1u, arg_2.a.x) & ~vec4<u32>(0u, 54467u, 29710u, global1.a.x), ~vec4<u32>(71047u, arg_1.x, u_input.a, u_input.a))));
    var var_2 = Struct_1(arg_1.yy);
    let var_3 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_2.a.x, _wgslsmith_clamp_u32(4294967295u, 0u, u_input.a), _wgslsmith_sub_u32(4294967295u, arg_2.a.x), reverseBits(35169u)) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, arg_2.a.x), vec4<u32>(8336u, arg_2.a.x, u_input.a, arg_1.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(~1u, 0u, _wgslsmith_sub_u32(arg_2.a.x, 32520u), countOneBits(1u)), vec4<u32>(1u, 37626u, global1.a.x, global1.a.x) >> (~vec4<u32>(var_2.a.x, 4294967295u, arg_1.x, var_2.a.x) % vec4<u32>(32u))) | vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.a.x, 0u), arg_1), 4294967295u | arg_2.a.x, firstLeadingBit(~arg_1.x)), firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(max(393u, 18263u), ~arg_1.x), global1.a.x, _wgslsmith_add_u32(1u, 0u), ~(~var_2.a.x))));
    return ~u_input.a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = select(select(vec3<bool>(global0.x, any(vec2<bool>(false, global0.x)), true), !select(!vec3<bool>(true, global0.x, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, false, global0.x)), !(~global1.a.x == u_input.a)), !(!select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, false, global0.x)), !vec3<bool>(true, global0.x, global0.x))), !select(!vec3<bool>(false, false, global0.x), vec3<bool>(true, true, true), vec3<bool>(!global0.x, false, global0.x || global0.x)));
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(1u, 1142u, ~abs(u_input.a)) >> ((func_3(_wgslsmith_sub_i32(-2147483647i, arg_0), func_2(Struct_1(global1.a), vec2<f32>(603f, -1378f), -2889f, Struct_1(global1.a)), Struct_1(global1.a)) >> (0u % 32u)) % 32u), u_input.a, global1.a.x);
    var var_1 = countOneBits(_wgslsmith_mod_vec3_i32(~select(vec3<i32>(arg_0, -21972i, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0, -17554i), vec3<i32>(2147483647i, 1i, arg_0)), select(vec3<bool>(global0.x, true, false), vec3<bool>(true, true, true), global0.x)), vec3<i32>(arg_0, arg_0, -1i)));
    var var_2 = Struct_1(countOneBits(min(vec2<u32>(99651u, select(u_input.a, global1.a.x, false)), _wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a, global1.a.x), var_0.yy, vec2<bool>(global0.x, false)), global1.a))));
    var var_3 = Struct_1(vec2<u32>(68894u, firstLeadingBit(global1.a.x) ^ var_0.x) & ~(~reverseBits(global1.a)));
    return Struct_1(_wgslsmith_add_vec2_u32(var_0.zz, _wgslsmith_div_vec2_u32(vec2<u32>(~9177u, func_2(Struct_1(vec2<u32>(u_input.a, var_3.a.x)), vec2<f32>(-1237f, -2150f), -1067f, Struct_1(vec2<u32>(global1.a.x, var_3.a.x))).x), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 32198u), var_2.a, vec2<u32>(var_2.a.x, 47058u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(global0.x, false, global0.x)), true, global0.x), ~0u == _wgslsmith_sub_u32(u_input.a, global1.a.x)), vec3<bool>(true, true, false), !select(vec3<bool>(false, false, global0.x), vec3<bool>(true, global0.x, true), any(vec2<bool>(false, global0.x))));
    var var_1 = func_1(_wgslsmith_mult_i32(~(-37690i), ~1i) >> (_wgslsmith_mult_u32(global1.a.x, u_input.a) % 32u));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 14713u, 4294967295u), vec4<u32>(1u, 58578u, 19163u, var_1.a.x)) >> (vec4<u32>(abs(9460u), ~u_input.a, countOneBits(0u), ~var_1.a.x) % vec4<u32>(32u)), min(abs(~vec4<u32>(0u, 29954u, 0u, 1u)), vec4<u32>(_wgslsmith_mod_u32(63503u, var_1.a.x), global1.a.x, countOneBits(u_input.a), reverseBits(u_input.a)))));
}

