struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    return Struct_3(vec4<u32>(u_input.a, select(~u_input.a >> (u_input.a % 32u), 0u, true), u_input.a, u_input.a));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) * 1387f));
    var var_1 = 928u;
    var_1 = u_input.a;
    var var_2 = func_2(~(-abs(71870i)));
    var_2 = func_2(-16131i);
    return Struct_3(vec4<u32>(u_input.a >> (1u % 32u), func_2(u_input.b.x).a.x, var_2.a.x, _wgslsmith_mult_u32(var_2.a.x, _wgslsmith_mult_u32(countOneBits(4294967295u), ~u_input.a))));
}

fn func_3() -> i32 {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_div_u32(select(~(~(~u_input.a)), firstLeadingBit(u_input.a), any(vec2<bool>(any(vec4<bool>(false, true, true, false)), true))), select(u_input.a, u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1521f, 331f))) >= 1f));
    var var_1 = Struct_3(func_2(u_input.b.x).a);
    var var_2 = Struct_2(select(countOneBits(vec4<i32>(0i, u_input.b.x << (var_1.a.x % 32u), u_input.b.x, countOneBits(u_input.b.x))), _wgslsmith_sub_vec4_i32(u_input.b & max(vec4<i32>(u_input.b.x, 0i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, -18975i, -369i, u_input.b.x)), firstTrailingBit(-u_input.b)), true), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)))), any(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), all(vec4<bool>(true, true, false, false)))), Struct_1(vec2<u32>(1u, func_1(-793f).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1763f, _wgslsmith_f_op_f32(-1155f * -604f)))), select(vec2<bool>(true, select(true, true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), vec4<bool>(true, !all(vec4<bool>(false, false, false, false)), !all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)))));
    var var_3 = max(~max(func_1(_wgslsmith_f_op_f32(-var_2.d.b)).a.yz, var_1.a.yx), reverseBits(~vec2<u32>(4294967295u, 2247u)));
    return ~var_2.a.x | min(2147483647i, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_1(1000f);
    var var_2 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, var_0), select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, true)))), !(!vec2<bool>(var_0, var_0)), false), vec2<bool>((func_3() & _wgslsmith_mult_i32(u_input.b.x, 18485i)) < 2147483647i, !((u_input.a & 4294967295u) <= ~4294967295u)), vec2<bool>(true, true));
    var var_3 = Struct_1(~max(vec2<u32>(35852u, var_1.a.x) ^ vec2<u32>(0u, 20371u), ~var_1.a.yz), -1000f, !(!vec2<bool>(38464u < var_1.a.x, true)));
    var var_4 = Struct_1(~var_1.a.zy & func_2(func_3()).a.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_3.b))))), !vec2<bool>(!var_2.x, any(vec2<bool>(var_2.x, true)) && select(var_2.x, var_3.c.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-369f);
}

