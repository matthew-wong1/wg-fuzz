struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_mod_i32(~u_input.c, -57712i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.d, -26072i), vec3<i32>(-24469i, u_input.d, u_input.d)), countOneBits(vec3<i32>(-4091i, u_input.d, 2147483647i))), select(-1i, 2147483647i, false) >> (u_input.a % 32u))));
    let var_1 = _wgslsmith_sub_i32(var_0.a.a.x ^ _wgslsmith_mult_i32(u_input.d, ~(~23787i)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c << (11344u % 32u), u_input.c), -vec2<i32>(u_input.c, u_input.c), true), _wgslsmith_mult_vec2_i32(var_0.a.a.zx, vec2<i32>(0i, countOneBits(-1i)))));
    var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-21622i, var_0.a.a.x, -2147483647i), -var_0.a.a, vec3<i32>(7115i, -u_input.d, _wgslsmith_mod_i32(var_0.a.a.x, var_0.a.a.x)))));
    var_0 = Struct_2(Struct_1(select(vec3<i32>(28133i >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.c, 2147483647i, u_input.d), vec4<i32>(19370i, var_1, var_0.a.a.x, -55774i)), 1i & var_1), vec3<i32>(var_0.a.a.x, 2147483647i, 1i), true)));
    var_0 = Struct_2(Struct_1(var_0.a.a));
    return false;
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = !(_wgslsmith_dot_vec2_i32(~vec2<i32>(41307i, arg_0.a.a.x), -vec2<i32>(u_input.c, -35062i)) < 1i) & !all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), true));
    var var_1 = firstTrailingBit(firstTrailingBit(-(~arg_0.a.a.yx))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, select(40919u, u_input.e, !var_0)), ~(~abs(u_input.b.zz))) % vec2<u32>(32u));
    var var_2 = -vec3<i32>(0i, 0i, -28546i);
    let var_3 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.a.x, abs(~(-2147483647i)), arg_0.a.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c, var_1.x), _wgslsmith_mod_vec3_i32(arg_0.a.a, vec3<i32>(arg_0.a.a.x, 11625i, u_input.c))), _wgslsmith_dot_vec3_i32(countOneBits(arg_0.a.a), ~vec3<i32>(var_2.x, var_1.x, -9260i)), var_1.x)));
    let var_4 = Struct_2(Struct_1(vec3<i32>(~25858i, ~_wgslsmith_dot_vec3_i32(var_3.a, vec3<i32>(arg_0.a.a.x, -24839i, 61028i)), var_1.x)));
    return ~(u_input.c >> (u_input.e % 32u));
}

fn func_1(arg_0: vec2<i32>) -> vec2<i32> {
    let var_0 = func_2();
    let var_1 = select(_wgslsmith_sub_vec3_i32(-vec3<i32>(15189i, 0i, func_3(Struct_2(Struct_1(vec3<i32>(2147483647i, -14785i, u_input.c))))), min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, arg_0.x, 26409i) << (u_input.b % vec3<u32>(32u)), vec3<i32>(0i, -2268i, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, 28532i, u_input.d), vec3<i32>(u_input.c, -2147483647i, arg_0.x)))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, firstLeadingBit(u_input.d), ~29587i), -_wgslsmith_sub_vec3_i32(vec3<i32>(-54129i, arg_0.x, -2147483647i), vec3<i32>(5139i, u_input.d, 0i))), vec3<i32>(-(~u_input.c), arg_0.x, -1i)), select(select(vec3<bool>(all(vec3<bool>(false, var_0, true)), false, true), !vec3<bool>(var_0, true, true), select(!vec3<bool>(true, false, var_0), !vec3<bool>(var_0, false, var_0), false)), vec3<bool>(any(vec3<bool>(true, true, true)), var_0, var_0), vec3<bool>(any(!vec4<bool>(var_0, true, var_0, false)), true, select(!var_0, !var_0, select(var_0, var_0, var_0)))));
    var var_2 = vec4<bool>(all(select(!(!vec3<bool>(true, var_0, false)), select(vec3<bool>(true, false, false), !vec3<bool>(true, var_0, var_0), vec3<bool>(true, true, false)), var_0)), false, var_0 || var_0, ~_wgslsmith_add_u32(~1279u, 7572u ^ u_input.b.x) > _wgslsmith_add_u32(~7347u, 1u));
    var_2 = select(select(!select(vec4<bool>(true, true, var_0, var_2.x), !vec4<bool>(var_2.x, true, true, true), select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(false, var_0, false, true), false)), vec4<bool>(all(vec3<bool>(var_2.x, var_0, false)), ~36308i <= (u_input.c >> (0u % 32u)), !(!var_2.x), true), func_2()), !select(select(select(vec4<bool>(var_2.x, var_2.x, true, var_0), vec4<bool>(var_2.x, false, var_2.x, var_0), var_0), !vec4<bool>(var_0, false, false, false), select(vec4<bool>(true, var_0, true, false), vec4<bool>(true, var_0, var_0, true), var_0)), vec4<bool>(any(vec4<bool>(var_0, var_2.x, var_2.x, var_0)), false, true, var_0), true && var_0), vec4<bool>(var_2.x, false, any(!(!var_2.wx)), all(vec3<bool>(all(vec4<bool>(var_2.x, false, false, var_2.x)), true, false))));
    var var_3 = select(!var_2.zzz, vec3<bool>(!(!all(var_2.xwz)), select(!(!var_0), select(true, u_input.e < u_input.b.x, true), true), true), true);
    return _wgslsmith_mult_vec2_i32(vec2<i32>(abs(arg_0.x >> (1u % 32u)), countOneBits(~u_input.d)) << (~(u_input.b.yz & (u_input.b.yx >> (u_input.b.zy % vec2<u32>(32u)))) % vec2<u32>(32u)), vec2<i32>(var_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-93560i, -60300i), -arg_0, vec2<i32>(2147483647i, arg_0.x)), var_1.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_add_vec2_i32(vec2<i32>(~u_input.c, _wgslsmith_mod_i32(u_input.c, -2147483647i)) >> (vec2<u32>(~0u, u_input.a) % vec2<u32>(32u)), reverseBits(func_1(vec2<i32>(u_input.c, u_input.c)) & vec2<i32>(-5207i, u_input.c))));
    let var_1 = -382f;
    let var_2 = !select(vec2<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), vec2<bool>(all(vec4<bool>(true, true, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), any(vec2<bool>(false, false))));
    var var_3 = Struct_1(~vec3<i32>((var_0.x << (u_input.e % 32u)) >> (~4294967295u % 32u), u_input.d, 86219i));
    var var_4 = ~(~(~(~max(u_input.b.xx, u_input.b.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1199f, _wgslsmith_f_op_f32(min(-1217f, 585f)))))), _wgslsmith_f_op_f32(sign(446f)));
}

