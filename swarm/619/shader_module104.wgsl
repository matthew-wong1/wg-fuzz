struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-39430i, _wgslsmith_sub_i32(4200i, 1i), arg_1 & 44395i, arg_0) << (select(vec4<u32>(arg_2.x, 4294967295u, arg_2.x, 0u) ^ vec4<u32>(arg_2.x, 11712u, arg_2.x, arg_2.x), vec4<u32>(1u, arg_2.x, arg_2.x, 56392u) | vec4<u32>(u_input.c, arg_2.x, u_input.a, 0u), true) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, u_input.b.x, ~arg_1, 0i), vec4<i32>(arg_1, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.b.x, -2147483647i), vec3<i32>(22982i, -32594i, 10287i)), u_input.b.x), vec4<i32>(arg_1, arg_1, reverseBits(1i), ~0i))));
    var var_1 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 2923u), 0u), u_input.c << ((arg_2.x >> (u_input.c % 32u)) % 32u), 32711u, arg_2.x), (vec4<u32>(50231u, 1u, 17859u, u_input.a) << (vec4<u32>(arg_2.x, 1u, 64398u, u_input.c) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 12158u, 1u, arg_2.x), vec4<u32>(30214u, u_input.a, 1u, arg_2.x)), ~4294967295u, ~u_input.c, ~u_input.c), true), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(0u, arg_2.x, 2112u, arg_2.x) << (vec4<u32>(31974u, u_input.c, u_input.c, 57366u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, u_input.c, 68986u), vec4<u32>(84084u, 23110u, 26428u, 1u) >> (vec4<u32>(50064u, u_input.a, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(36354u, 64203u, u_input.a, 11944u), vec4<u32>(u_input.c, u_input.a, arg_2.x, u_input.c), false), vec4<u32>(u_input.a, 1u, u_input.a, 0u), vec4<u32>(u_input.a, 37408u, 1u, u_input.a) << (vec4<u32>(51697u, 17537u, 0u, 15709u) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a, 55557u, 0u), vec4<u32>(4294967295u, 48223u, 0u, 0u))), 1u, 0u, u_input.c)));
    var var_2 = abs(abs(~vec2<u32>(u_input.a & arg_2.x, ~arg_2.x)));
    var var_3 = -vec3<i32>(min(~53400i, -arg_0 >> (1u % 32u)), abs(2147483647i), 1i);
    var_2 = arg_2.zy;
    return var_0.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, -9521i, -1i), firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 955i, u_input.b.x)) & -vec4<i32>(u_input.b.x, 23820i, 7839i, u_input.b.x)), vec4<i32>(countOneBits(-u_input.b.x), _wgslsmith_mult_i32(-617i, u_input.b.x), firstLeadingBit(u_input.b.x), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.b.x))));
    var_0 = Struct_1(vec4<i32>(~var_0.a.x, u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, -1i), ~(i32(-1i) * -1i)), -u_input.b.x));
    var_0 = Struct_1(vec4<i32>(_wgslsmith_add_i32(28148i, _wgslsmith_div_i32(var_0.a.x ^ var_0.a.x, func_3(9210i, -17101i, vec3<u32>(4294967295u, 1u, u_input.c)))), -1i, var_0.a.x << (u_input.c % 32u), -_wgslsmith_sub_i32(u_input.b.x, u_input.b.x) << (u_input.c % 32u)));
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = u_input.c;
    return Struct_1(countOneBits(countOneBits(_wgslsmith_sub_vec4_i32(select(var_0.a, vec4<i32>(-29744i, u_input.b.x, 1i, var_0.a.x), var_1.x), vec4<i32>(u_input.b.x, var_0.a.x, -51103i, 14573i)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(12026i, i32(-1i) * -1i, -1i, var_0.a.x), var_0.a) >> ((~(vec4<u32>(11710u, u_input.c, 6636u, 4294967295u) | vec4<u32>(u_input.c, u_input.a, u_input.c, 0u)) << (_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.c, 1u, 4294967295u, 4294967295u)), vec4<u32>(65724u, 4294967295u, 35814u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = func_2();
    var var_2 = Struct_1(_wgslsmith_div_vec4_i32(var_1.a, var_1.a));
    var_2 = Struct_1(var_0.a);
    return !vec4<bool>(all(vec2<bool>(true, true)), !(~0u <= u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(318f)) * _wgslsmith_f_op_f32(floor(386f))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2070f)), -1660f)), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -31782i, 32305i), -vec3<i32>(arg_0.a.x, 1i, u_input.b.x)), max(1i, _wgslsmith_clamp_i32(2147483647i, arg_2.a.x, 2147483647i))), _wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(arg_2.a.xz, u_input.b)), arg_2.a.wx) << ((~abs(vec2<u32>(u_input.c, u_input.a)) >> (min(~vec2<u32>(u_input.a, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(4400u, arg_3), vec2<u32>(u_input.a, arg_3))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = !arg_1.yyw;
    var var_2 = vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, u_input.c), 4294967295u, ~14017u, 3126u), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(17254u, 1u, arg_3, arg_3), vec4<u32>(31475u, 11137u, 0u, 8261u)), ~vec4<u32>(u_input.a, 1u, u_input.a, 1u))), firstLeadingBit(u_input.a), u_input.c);
    let var_3 = Struct_1(vec4<i32>(var_0.x, u_input.b.x, -arg_2.a.x << (min(~47249u, u_input.c) % 32u), u_input.b.x));
    let var_4 = ~var_0;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(vec4<i32>(min(_wgslsmith_div_i32(-15792i, 13695i), u_input.b.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), 1i), u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, i32(-1i) * -1i, u_input.b.x))), !select(func_1(), vec4<bool>(true, true, true, true), false), Struct_1(select(vec4<i32>(~u_input.b.x, _wgslsmith_add_i32(8708i, u_input.b.x), -u_input.b.x, ~u_input.b.x), select(countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -27087i)), -vec4<i32>(u_input.b.x, -1i, u_input.b.x, 34941i), all(vec4<bool>(false, false, false, false))), all(vec2<bool>(true, true)))), _wgslsmith_mod_u32(0u, reverseBits(u_input.a ^ 0u)) & 1u);
    let var_1 = var_0;
    let var_2 = false;
    let var_3 = Struct_1(var_1.a);
    let var_4 = !vec4<bool>(var_2, var_2, var_2, all(vec3<bool>(true, u_input.a == 18917u, false & var_2)));
    var var_5 = abs(var_1.a.x);
    let var_6 = var_1.a.wz;
    var_5 = 19063i;
    let var_7 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_3.a.zz, vec2<i32>(0i, var_6.x)), var_7.a.x));
}

