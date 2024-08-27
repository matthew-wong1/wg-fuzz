struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    return Struct_1(~arg_0.x);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(72512u ^ firstLeadingBit(u_input.a.x)), select(select(select(!vec2<bool>(arg_3, arg_3), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, arg_3)), false), vec2<bool>(!arg_3, any(vec4<bool>(true, arg_3, false, arg_3))), !vec2<bool>(arg_3, true)), select(vec2<bool>(false, arg_3 && arg_3), vec2<bool>(all(vec4<bool>(arg_3, arg_3, arg_3, true)), arg_2.a < u_input.a.x), vec2<bool>(any(vec2<bool>(arg_3, arg_3)), all(vec2<bool>(false, false)))), ~u_input.a.x >= func_2(~u_input.a.xz).a), Struct_1(23877u));
    var var_1 = func_2(u_input.a.yy);
    var var_2 = vec2<u32>(max(8766u, 0u), abs(_wgslsmith_mod_u32(1u, abs(var_1.a)))) << (vec2<u32>(var_1.a, 60709u) % vec2<u32>(32u));
    var var_3 = !select(!vec3<bool>(arg_3 && arg_3, var_0.b.x, false), select(vec3<bool>(var_0.b.x, false, select(var_0.b.x, arg_3, var_0.b.x)), !(!vec3<bool>(true, arg_3, true)), !(var_0.b.x && var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1381f)) * 1581f) <= _wgslsmith_f_op_f32(f32(-1f) * -361f));
    var var_4 = Struct_1(~var_1.a);
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_3.c.a | func_2(vec2<u32>(arg_3.a.a, arg_0.a)).a, arg_0.a, reverseBits(arg_0.a)), arg_0.a));
    let var_1 = Struct_2(Struct_1(arg_0.a), arg_3.b, var_0);
    var var_2 = vec3<bool>(arg_2 && true, arg_1, arg_3.b.x);
    var var_3 = Struct_1(~abs(firstLeadingBit(~28334u)));
    var_3 = Struct_1(~(~((arg_3.a.a & u_input.b.x) ^ u_input.b.x)));
    return 2147483647i;
}

fn func_5(arg_0: i32) -> vec3<i32> {
    let var_0 = select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) & (!all(vec4<bool>(true, true, true, false)) == true), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)))), true);
    var var_1 = ~(~u_input.a);
    var_1 = ~vec3<u32>(reverseBits(_wgslsmith_clamp_u32(73164u, 0u, var_1.x)), var_1.x, var_1.x) | _wgslsmith_mod_vec3_u32(u_input.a, ~min(countOneBits(vec3<u32>(22308u, u_input.b.x, var_1.x)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)));
    let var_2 = !(-_wgslsmith_clamp_i32(0i, select(-37657i, arg_0, var_0), -26972i) != _wgslsmith_add_i32(arg_0, 0i));
    var_1 = abs(u_input.a);
    return _wgslsmith_mod_vec3_i32(select(min(~(vec3<i32>(0i, arg_0, 13332i) & vec3<i32>(-1i, 49561i, arg_0)), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-26355i, arg_0, 1i), vec3<i32>(9280i, arg_0, -2147483647i), vec3<i32>(arg_0, arg_0, arg_0)), min(vec3<i32>(2147483647i, 0i, arg_0), vec3<i32>(arg_0, arg_0, 4742i)))), -vec3<i32>(0i, ~arg_0, _wgslsmith_add_i32(-2147483647i, 2147483647i)), var_2), vec3<i32>(~(-abs(arg_0)), select(countOneBits(-17926i & arg_0), max(_wgslsmith_mod_i32(arg_0, 2147483647i), arg_0), arg_0 == (i32(-1i) * -14791i)), -_wgslsmith_add_i32(arg_0, arg_0 | arg_0)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(func_4(Struct_1(35146u), true, true, Struct_2(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2574i, -6259i, -10259i), vec4<i32>(1i, -8136i, -32823i, 1i)), -vec3<i32>(28846i, -1i, -20578i), func_2(u_input.a.zy), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), func_3(vec4<i32>(1i, 1i, 1i, 1i), vec3<i32>(-31184i, -1i, -37738i), Struct_1(u_input.b.x), false))));
    var var_1 = 499f;
    var_0 = vec3<i32>(select(firstLeadingBit(1i | -var_0.x), var_0.x, true), -(_wgslsmith_div_i32(-21011i, -4227i) & var_0.x) >> (0u % 32u), ~_wgslsmith_div_i32(var_0.x, ~(-var_0.x)));
    var var_2 = ~(~(_wgslsmith_add_vec4_i32(vec4<i32>(21444i, -7366i, 2147483647i, 15264i), vec4<i32>(2147483647i, -7820i, var_0.x, var_0.x)) & -vec4<i32>(2720i, -35193i, 16899i, var_0.x))) & (-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, 1i, var_0.x) >> (vec4<u32>(4294967295u, 8588u, u_input.b.x, u_input.a.x) % vec4<u32>(32u)), abs(vec4<i32>(var_0.x, 1i, var_0.x, 67498i)), vec4<i32>(1i, var_0.x, 15635i, var_0.x) | vec4<i32>(var_0.x, -2147483647i, 1i, var_0.x)) & firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.x, 0i, var_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(57107i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, -46821i, var_0.x)))));
    var_1 = -348f;
    return Struct_1(_wgslsmith_mod_u32(firstLeadingBit(53562u) | u_input.a.x, max(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.yz), 0u ^ u_input.b.x) >> (u_input.a.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, !any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true)), !all(vec4<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(true, true, false)), true, true)), all(vec3<bool>(true, true, any(vec3<bool>(false, true, true)))) && true);
    var var_1 = Struct_2(Struct_1(u_input.b.x), !var_0.wy, func_1());
    let var_2 = all(!select(select(var_0.zww, var_0.yzz, var_0.wxz), var_0.zxw, select(var_0.xww, vec3<bool>(false, var_0.x, false), var_0.x))) || false;
    let var_3 = true | (u_input.a.x < 36291u);
    var var_4 = var_1.a;
    var_0 = !vec4<bool>(var_1.b.x, true, all(select(select(vec4<bool>(true, var_3, true, true), vec4<bool>(true, true, false, var_2), vec4<bool>(var_1.b.x, var_3, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(var_1.b.x, var_2, var_2, true))), !var_2 && true);
    var_0 = select(!(!vec4<bool>(var_1.b.x | false, var_3, any(var_0.zxw), true)), !select(select(vec4<bool>(var_2, true, false, var_3), !vec4<bool>(false, true, false, var_1.b.x), !vec4<bool>(var_2, true, false, var_1.b.x)), !vec4<bool>(true, false, var_0.x, var_2), vec4<bool>(var_3 && true, true, var_3, var_1.b.x)), any(!(!vec2<bool>(var_0.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<u32>(countOneBits(firstTrailingBit(u_input.a.x)), 1974u, u_input.b.x, 1u) | vec4<u32>(0u, 16199u, reverseBits(1u), ~(~var_1.a.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(~max(-19123i, -1i), -abs(-24891i), 1i), vec3<i32>(firstLeadingBit(i32(-1i) * -46141i), _wgslsmith_sub_i32(1i, 18947i), ~0i)));
}

