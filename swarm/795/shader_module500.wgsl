struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> i32 {
    var var_0 = !arg_3;
    var var_1 = true;
    var_1 = any(vec2<bool>(!arg_2, !all(!vec3<bool>(arg_3.x, false, true))));
    var_1 = arg_3.x;
    var var_2 = vec4<u32>(14033u, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, u_input.a.x), vec2<u32>(u_input.a.x, 40584u))) & arg_0.a, 1u, _wgslsmith_mult_u32(max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(77134u, arg_1.a, u_input.a.x), arg_1.c)) >> (4294967295u % 32u), _wgslsmith_clamp_u32(6348u, ~_wgslsmith_dot_vec3_u32(arg_1.c, vec3<u32>(4294967295u, u_input.a.x, 23464u)), _wgslsmith_clamp_u32(0u, ~u_input.a.x, firstLeadingBit(arg_0.a)))));
    return arg_1.b.x;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = ~vec2<i32>(0i, arg_0.b.x);
    var var_1 = arg_0.c.x;
    var_1 = u_input.a.x >> (56110u % 32u);
    let var_2 = Struct_1(_wgslsmith_div_u32(arg_0.c.x >> (0u % 32u), arg_0.c.x), var_0, vec3<u32>(1u, ~(~arg_0.c.x), 45829u));
    var var_3 = u_input.a.x;
    return func_3(Struct_1(~(~_wgslsmith_mod_u32(30156u, 1u)), _wgslsmith_div_vec2_i32(-(vec2<i32>(9414i, var_2.b.x) | arg_0.b), vec2<i32>(0i, ~var_0.x)), ~max(vec3<u32>(u_input.a.x, 56360u, 4294967295u) << (vec3<u32>(0u, 56671u, 4294967295u) % vec3<u32>(32u)), u_input.a)), Struct_1(~65062u, min(vec2<i32>(~0i, -1i), vec2<i32>(-1i) * -arg_0.b), var_2.c), true, vec3<bool>(true, true, true));
}

fn func_1() -> Struct_1 {
    var var_0 = ~(u_input.a.yy | u_input.a.zx);
    let var_1 = (2147483647i < (_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-32091i, -1i), vec2<i32>(80639i, 1i)), min(vec2<i32>(-2147483647i, -1i), vec2<i32>(5938i, 42754i))) & -32134i)) | any(vec4<bool>(true, true, true, true));
    let var_2 = Struct_1(var_0.x, vec2<i32>(-1i, -abs(func_2(Struct_1(u_input.a.x, vec2<i32>(0i, 19394i), vec3<u32>(u_input.a.x, u_input.a.x, 5515u))))), vec3<u32>(19092u, var_0.x, 2742u));
    var var_3 = Struct_1(~_wgslsmith_clamp_u32(51279u, abs(_wgslsmith_div_u32(u_input.a.x, 12862u)), 0u), ~(~vec2<i32>(max(-2147483647i, var_2.b.x), reverseBits(var_2.b.x))), vec3<u32>(~abs(var_2.a) >> (~1u % 32u), var_2.a, u_input.a.x));
    var_3 = Struct_1(_wgslsmith_div_u32(var_3.a, min(~1u, _wgslsmith_mod_u32(0u, ~var_0.x))), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(abs(reverseBits(vec2<i32>(var_2.b.x, 2147483647i))), ~var_2.b & vec2<i32>(var_2.b.x, 2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(var_3.b.x), select(var_3.b.x, var_3.b.x, var_1)), var_3.b)), select(~max(countOneBits(vec3<u32>(var_3.a, 4294967295u, u_input.a.x)), var_2.c), var_2.c, select(!vec3<bool>(var_1, false, false), select(!vec3<bool>(var_1, var_1, true), select(vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, var_1, false), true), vec3<bool>(var_1, true, var_1)), vec3<bool>(var_1, true, var_1))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_sub_vec2_i32(var_0.b, ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, var_0.b.x), var_0.b)) >> ((select(abs(vec2<u32>(u_input.a.x, 50590u)), var_0.c.xy << (vec2<u32>(u_input.a.x, var_0.c.x) % vec2<u32>(32u)), any(vec2<bool>(false, false))) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mult_vec3_u32(~abs(firstLeadingBit(vec3<u32>(u_input.a.x, 62613u, 0u))), vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(var_0.c.x, var_0.a), _wgslsmith_div_u32(4294967295u, 27192u) | _wgslsmith_clamp_u32(u_input.a.x, var_0.c.x, var_0.a))));
    var var_2 = false;
    var_2 = false;
    let var_3 = -693f;
    let var_4 = abs(~u_input.a.xx);
    var var_5 = var_1;
    var var_6 = vec4<bool>(false, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)), any(vec2<bool>(true, true)), true && any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(52470i, var_5.c.x, countOneBits(abs(~_wgslsmith_clamp_u32(1u, u_input.a.x, var_0.c.x))), ~select(_wgslsmith_mult_i32(-1i, 18636i) ^ ~var_0.b.x, _wgslsmith_sub_i32(-32198i, _wgslsmith_div_i32(-1i, var_5.b.x)), var_6.x), vec4<i32>(6013i, -40949i & var_5.b.x, ~var_1.b.x, _wgslsmith_sub_i32(var_1.b.x << ((var_5.a ^ var_4.x) % 32u), max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_5.b.x, 1i), vec2<i32>(var_1.b.x, 2147483647i)), var_0.b.x))));
}

