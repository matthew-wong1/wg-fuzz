struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = Struct_2(arg_1, arg_1);
    var_0 = Struct_2(Struct_1(!arg_1.a), Struct_1(!(!(!arg_1.a))));
    var var_1 = firstTrailingBit(vec3<u32>(~1u, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.e, 37603u), ~u_input.b.x)), max(u_input.e & max(0u, u_input.e), ~_wgslsmith_mod_u32(u_input.e, 21210u))));
    let var_2 = _wgslsmith_mult_i32(30552i, ~(arg_2 >> (_wgslsmith_sub_u32(firstTrailingBit(58469u), 25045u) % 32u)));
    var var_3 = ~var_1.x;
    return countOneBits(reverseBits(_wgslsmith_add_i32(-2147483647i, countOneBits(var_2)) | reverseBits(_wgslsmith_mod_i32(7955i, 53629i))));
}

fn func_1() -> vec3<i32> {
    return ~_wgslsmith_add_vec3_i32(u_input.a.yxw, vec3<i32>(func_2(~u_input.a.x, Struct_1(vec4<bool>(false, true, false, false)), abs(-17888i)), u_input.a.x, reverseBits(_wgslsmith_mult_i32(68539i, 1i))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = u_input.b.x >> (~(73228u ^ _wgslsmith_mult_u32(reverseBits(5356u), _wgslsmith_add_u32(6032u, u_input.e))) % 32u);
    var var_1 = ~41720u;
    var var_2 = !select(select(vec2<bool>(!arg_1.b.a.x, true), vec2<bool>(arg_2, false), arg_1.a.a.yy), arg_1.a.a.xw, vec2<bool>(!arg_1.b.a.x, !arg_2));
    return !arg_1.b.a.zyz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec4<bool>(true, false, true, !any(vec4<bool>(false, true, true, true)))), Struct_1(vec4<bool>(false, true, u_input.c.x != 1i, (u_input.d.x | 8601u) >= u_input.e)));
    var var_1 = var_0.a.a.wzy;
    var_1 = !select(func_3(func_1() << ((vec3<u32>(1u, 4294967295u, 1u) >> (u_input.b.yxz % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_2(Struct_1(var_0.a.a), Struct_1(var_0.b.a)), var_1.x && true, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -30590i), firstTrailingBit(vec3<i32>(-2147483647i, 0i, u_input.c.x)))), func_3(abs(u_input.a.ywx) ^ vec3<i32>(68296i, u_input.c.x, 0i), Struct_2(Struct_1(var_0.a.a), Struct_1(var_0.a.a)), false, _wgslsmith_div_vec3_i32(-u_input.a.yxw, _wgslsmith_mod_vec3_i32(u_input.a.wyy, vec3<i32>(1i, 1i, -2147483647i)))), select(true, !all(var_0.b.a), true));
    var var_2 = vec4<bool>(true, true, all(!(!var_1.xx)), !select(true, -14426i < u_input.c.x, !var_0.a.a.x) | select(u_input.e < _wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(29880u, 0u)), any(vec3<bool>(false, var_1.x, false)), true));
    var_0 = Struct_2(var_0.b, Struct_1(select(var_0.a.a, vec4<bool>(var_0.a.a.x, all(var_0.b.a), any(vec4<bool>(false, var_2.x, false, false)), false), !(u_input.e > u_input.b.x))));
    let var_3 = vec4<f32>(-238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f + 1257f)) - 1219f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-584f, 419f), _wgslsmith_f_op_f32(f32(-1f) * -193f), all(vec4<bool>(var_2.x, var_1.x, var_0.b.a.x, false)))))), 599f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-734f * _wgslsmith_f_op_f32(trunc(-1570f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))));
    let var_4 = u_input.a.zyz;
    var_1 = !select(var_0.b.a.xzz, var_0.b.a.yzw, var_0.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xy << (reverseBits(~(~vec2<u32>(4294967295u, 57789u))) % vec2<u32>(32u)));
}

