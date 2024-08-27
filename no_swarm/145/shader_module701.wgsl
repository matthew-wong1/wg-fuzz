struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(18262i, 4077i, 7456i)), Struct_1(vec3<i32>(6869i, i32(-2147483648), 26974i)), Struct_1(vec3<i32>(6025i, 0i, 8749i)), Struct_1(vec3<i32>(55388i, 0i, 0i)), Struct_1(vec3<i32>(0i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(-5804i, 1i, 2147483647i)), Struct_1(vec3<i32>(-1i, 1i, -25504i)), Struct_1(vec3<i32>(23511i, 1i, -35561i)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = select(select(arg_1, select(arg_1, arg_1, !vec2<bool>(arg_1.x, true)), arg_1.x), !arg_1, !select(arg_1, !vec2<bool>(arg_1.x, true), arg_1));
    var var_1 = Struct_3(Struct_2(Struct_1(vec3<i32>(2147483647i, arg_0.x, _wgslsmith_div_i32(arg_0.x, 0i))), u_input.a.zx), global0[_wgslsmith_index_u32(u_input.a.x, 8u)], arg_0.x ^ (-(arg_0.x | -25413i) << (~(4294967295u & u_input.a.x) % 32u)), Struct_2(global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_div_u32(4294967295u, u_input.a.x)), 8u)], _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(999u & u_input.a.x, u_input.a.x))));
    var var_2 = (u_input.a.x < ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, var_1.d.b.x))) && (arg_1.x & true);
    var var_3 = Struct_4(Struct_1(~(-vec3<i32>(var_1.d.a.a.x, 2147483647i, -40531i)) & _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.x, 30053i, var_1.c)), reverseBits(var_1.a.a.a))), Struct_1(vec3<i32>(max(2147483647i, _wgslsmith_mult_i32(1i, -15991i)), _wgslsmith_div_i32(-3895i, var_1.b.a.x), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, 2147483647i, var_1.d.a.a.x), var_1.c, 45514i))), _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-24247i, i32(-1i) * -6640i), -(~arg_0.x))), Struct_3(var_1.a, Struct_1(vec3<i32>(var_1.a.a.a.x, 40067i, min(1i, 1i))), var_1.b.a.x, Struct_2(var_1.b, max(u_input.a.xy, select(vec2<u32>(var_1.a.b.x, var_1.d.b.x), vec2<u32>(u_input.a.x, 92942u), var_0.x)))));
    var_3 = Struct_4(var_3.a, var_1.b, max(arg_0.x, i32(-1i) * -min(1i, var_3.c)), Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, arg_0.x), var_3.d.d.a.a)), var_1.a.b), Struct_1(vec3<i32>(var_1.d.a.a.x, var_1.a.a.a.x >> (16183u % 32u), i32(-1i) * -1i)), ~arg_0.x, var_3.d.d));
    return select(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(19061u, var_3.d.a.b.x, 74648u), vec3<u32>(0u, 16019u, 0u)) & min(u_input.a, vec3<u32>(4294967295u, var_3.d.d.b.x, u_input.a.x))), ~(~12223u), any(select(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, var_0.x, false, false), vec4<bool>(arg_1.x, var_0.x, true, var_0.x)), select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x), !vec4<bool>(true, false, arg_1.x, false)))) >> ((abs(firstTrailingBit(41091u)) << (_wgslsmith_clamp_u32(u_input.a.x, firstLeadingBit(37770u), ~(~var_1.a.b.x)) % 32u)) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = select(-vec4<i32>(arg_0.a.x, arg_0.a.x, ~0i, 2147483647i ^ arg_0.a.x), select(vec4<i32>(arg_0.a.x, arg_0.a.x | arg_0.a.x, -29215i, firstTrailingBit(-9299i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.x, 8860i, arg_0.a.x, arg_0.a.x) << (vec4<u32>(0u, 58186u, 0u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.x, -1i, 2147483647i, -68990i), vec4<i32>(-1i, arg_0.a.x, arg_0.a.x, 2147483647i), vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x))), true), true) << (vec4<u32>(2705u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(37106u, _wgslsmith_sub_u32(u_input.a.x, 56224u)), _wgslsmith_mod_u32(~u_input.a.x, ~u_input.a.x), 9212u), ~(~4889u) & ~countOneBits(u_input.a.x), abs(_wgslsmith_sub_u32(4294967295u, min(1u, u_input.a.x)))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_dot_vec4_i32(var_0 ^ abs(min(var_0, select(vec4<i32>(2147483647i, 2147483647i, -2147483647i, -23745i), var_0, vec4<bool>(false, true, false, true)))), max(reverseBits(-max(var_0, vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<i32>(0i, -18069i, ~(-arg_0.a.x), var_0.x)));
    global0 = array<Struct_1, 8>();
    let var_2 = 1i;
    var var_3 = max(min(countOneBits(~u_input.a.xx), u_input.a.zz), vec2<u32>(~0u, u_input.a.x));
    return var_0.x;
}

fn func_2() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 8u)];
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, abs(u_input.a.x)), 6286u, u_input.a.x), 8u)], abs(max(~select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy, true), vec2<u32>(~u_input.a.x, countOneBits(u_input.a.x)))));
    let var_2 = reverseBits(func_4(global0[_wgslsmith_index_u32((4294967295u ^ func_3(var_0.a.yz, vec2<bool>(false, true))) & 1u, 8u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(-784f, -826f) * _wgslsmith_f_op_f32(-1f))));
    var var_3 = global0[_wgslsmith_index_u32(~(~(~var_1.b.x)), 8u)];
    let var_4 = 271f;
    return Struct_1(var_1.a.a ^ select(vec3<i32>(-10910i, 80101i << (var_1.b.x % 32u), -2147483647i), max(vec3<i32>(1i, -1i, -1i), vec3<i32>(-3807i, 5210i, var_0.a.x)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    let var_0 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec2<bool>(true, true), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)))), !all(vec3<bool>(select(false, false, false), all(vec2<bool>(true, true)), u_input.a.x <= u_input.a.x)));
    var var_1 = firstLeadingBit(arg_1.a.x);
    var var_2 = select(select(var_0, !var_0, all(vec3<bool>(all(vec4<bool>(true, var_0.x, var_0.x, false)), var_0.x | false, 154f <= arg_0.x))), vec2<bool>(!var_0.x, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(375f, 784f))) < arg_0.x), var_0);
    return select(-2147483647i >= arg_1.a.x, any(vec3<bool>(var_0.x, true, !var_2.x)), !any(select(vec4<bool>(false, var_0.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_0.x, true, var_2.x), true)));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-513f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_5(vec2<f32>(_wgslsmith_div_f32(-427f, arg_0.x), 537f), func_2(), Struct_2(Struct_1(vec3<i32>(1898i, -6871i, -5458i)), vec2<u32>(0u, 14136u))))) * -109f);
    let var_1 = Struct_4(Struct_1(vec3<i32>(2147483647i, abs(1i), 27420i)), func_2(), 1i, Struct_3(Struct_2(Struct_1(vec3<i32>(2147483647i, -40506i, -76810i)), ~vec2<u32>(69095u, 35167u)), Struct_1(abs(vec3<i32>(1i, 1i, 1i))), _wgslsmith_mod_i32(1i, 1i) << (firstTrailingBit(_wgslsmith_clamp_u32(37803u, 42308u, u_input.a.x)) % 32u), Struct_2(Struct_1(min(vec3<i32>(0i, 56040i, 1536i), vec3<i32>(17148i, 67510i, -6032i))), _wgslsmith_clamp_vec2_u32(u_input.a.yx, u_input.a.zz, vec2<u32>(u_input.a.x, 21852u)))));
    let var_2 = ~select(_wgslsmith_clamp_vec2_i32(firstLeadingBit(reverseBits(vec2<i32>(1i, var_1.d.c))), var_1.d.b.a.yx, _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_1.c), -vec2<i32>(var_1.d.d.a.a.x, var_1.b.a.x))), var_1.b.a.xz, true);
    var var_3 = Struct_2(var_1.d.b, ~(u_input.a.xy >> (u_input.a.xy % vec2<u32>(32u))));
    let var_4 = select(!vec2<bool>(true & (var_3.a.a.x <= var_3.a.a.x), any(vec3<bool>(false, true, false))), vec2<bool>(!(all(vec2<bool>(true, true)) & true), true), !any(vec3<bool>(true, true, true)));
    return var_1.c;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> StorageBuffer {
    var var_0 = func_2().a.zz;
    let var_1 = Struct_2(Struct_1(func_2().a), arg_1);
    var var_2 = true;
    var_0 = min(_wgslsmith_div_vec2_i32(abs(-vec2<i32>(var_1.a.a.x, var_0.x)), min(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.x, -2147483647i), vec2<i32>(arg_0.a.x, 12153i) & var_1.a.a.xy), vec2<i32>(_wgslsmith_mult_i32(arg_0.a.x, 2147483647i), -arg_0.a.x))), vec2<i32>(var_0.x & _wgslsmith_div_i32(0i, -var_1.a.a.x), 0i));
    var_2 = !(!(all(vec4<bool>(false, true, false, false)) || any(vec2<bool>(true, true))));
    return StorageBuffer(~(~_wgslsmith_sub_u32(34421u, ~4294967295u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1076f)))), var_1.b.x, ~max(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), ~vec4<u32>(arg_1.x, 1u, u_input.a.x, var_1.b.x)) | vec4<u32>(arg_1.x, 0u, u_input.a.x, ~_wgslsmith_sub_u32(var_1.b.x, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i);
    let var_1 = 1u;
    let var_2 = vec2<bool>(false, (any(vec2<bool>(true, true)) | true) | false);
    let x = u_input.a;
    s_output = func_6(Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(var_0.xzy, vec3<i32>(var_0.x, -1i, var_0.x)) ^ min(vec3<i32>(var_0.x, 25469i, -39762i), var_0.xxx), vec3<i32>(~(-22860i), func_1(vec2<f32>(626f, -986f)), 2147483647i))), abs(vec2<u32>(min(~1u, func_3(vec2<i32>(-2147483647i, 1i), var_2)), ~abs(49821u))));
}

