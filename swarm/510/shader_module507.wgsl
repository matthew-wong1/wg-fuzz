struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(0u);
    var var_1 = 1i | _wgslsmith_sub_i32(~(-2147483647i), ~u_input.b >> (1u % 32u));
    var var_2 = Struct_1(vec3<bool>(true, true, true));
    var_2 = Struct_1(select(!vec3<bool>(all(vec2<bool>(var_2.a.x, var_2.a.x)), true, true), select(!select(var_2.a, vec3<bool>(var_2.a.x, false, var_2.a.x), var_2.a), select(var_2.a, !var_2.a, vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), var_2.a), true));
    var_2 = Struct_1(select(vec3<bool>(select(var_2.a.x, !var_2.a.x, var_2.a.x & var_2.a.x), !(false && var_2.a.x), var_2.a.x), var_2.a, var_2.a));
    return select(!var_2.a, !select(!select(vec3<bool>(var_2.a.x, false, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), false), vec3<bool>(var_2.a.x, any(var_2.a.xx), false), false), var_2.a.x && !(!(var_2.a.x & true)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> bool {
    let var_0 = 0u;
    let var_1 = Struct_1(vec3<bool>(true, false, -u_input.b == u_input.b));
    var var_2 = true;
    let var_3 = var_1;
    var_2 = true;
    return arg_3;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = false != (!select(true, false, arg_0.x && arg_0.x) || func_3(func_2(), Struct_2(23035u), Struct_2(_wgslsmith_add_u32(u_input.a, 24700u)), arg_0.x));
    var var_1 = func_2();
    let var_2 = max(_wgslsmith_div_vec3_u32(select(firstTrailingBit(reverseBits(vec3<u32>(4294967295u, 48298u, arg_1))), select(vec3<u32>(8850u, arg_1, arg_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(14447u, 4294967295u, u_input.a), vec3<u32>(4294967295u, 23574u, u_input.a), vec3<u32>(1u, 4294967295u, u_input.a)), all(vec4<bool>(var_1.x, true, var_0, false))), arg_0.x), max(~vec3<u32>(1986u, 68538u, u_input.a), vec3<u32>(72406u, u_input.a, arg_1)) ^ reverseBits(vec3<u32>(u_input.a, 0u, u_input.a))), select(vec3<u32>(select(1u, 28583u, true), 23627u, arg_1) >> (vec3<u32>(u_input.a, ~u_input.a, 4294967295u) % vec3<u32>(32u)), vec3<u32>(countOneBits(~1u), 4294967295u, u_input.a), vec3<bool>(func_3(select(arg_0.zxw, arg_0.wzz, vec3<bool>(false, arg_0.x, false)), Struct_2(1u), Struct_2(32484u), true), select(arg_1, arg_1, var_1.x) >= 1u, select(false, true, true))));
    var var_3 = Struct_1(!(!vec3<bool>(true, true, arg_0.x && var_1.x)));
    let var_4 = (any(vec2<bool>(true, var_0)) | true) || true;
    return !all(select(arg_0, select(vec4<bool>(var_4, var_1.x, var_4, var_1.x), vec4<bool>(false, false, false, true), arg_0.x), select(!arg_0, vec4<bool>(arg_0.x, var_0, false, false), vec4<bool>(false, var_1.x, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(true, func_1(vec4<bool>(true, true, true, true), 1u << (min(u_input.a, u_input.a) % 32u), 34150i), func_3(vec3<bool>(true, true, true), Struct_2(4294967295u), Struct_2(max(u_input.a, u_input.a)), any(vec2<bool>(false, true)) | false)));
    let var_1 = _wgslsmith_mod_vec3_i32(~min(select(_wgslsmith_div_vec3_i32(vec3<i32>(43093i, u_input.b, u_input.b), vec3<i32>(32817i, u_input.b, u_input.b)), vec3<i32>(-1i, 2147483647i, u_input.b) << (vec3<u32>(29194u, u_input.a, u_input.a) % vec3<u32>(32u)), false), reverseBits(vec3<i32>(u_input.b, -27194i, 79785i))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(14173i, u_input.b, -36795i), firstTrailingBit(vec3<i32>(-1246i, u_input.b, -33781i)), vec3<i32>(u_input.b | 478i, abs(u_input.b), 29146i)), -(firstLeadingBit(vec3<i32>(u_input.b, -2147483647i, 56640i)) >> (min(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(97619u, u_input.a, u_input.a)) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-527f, _wgslsmith_f_op_f32(f32(-1f) * -1316f))), -552f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1191f * 1f));
    var_2 = var_0.a.x && (!(!all(var_0.a.xx)) & !(var_0.a.x | true));
    var var_3 = Struct_2(17957u);
    var_2 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~0i), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, ~var_3.a, 14538u), 0u), _wgslsmith_add_vec2_u32(min(vec2<u32>(45656u, 1u), vec2<u32>(4294967295u, 65513u)), ~(vec2<u32>(1u, u_input.a) | vec2<u32>(var_3.a, 4294967295u)))));
}

