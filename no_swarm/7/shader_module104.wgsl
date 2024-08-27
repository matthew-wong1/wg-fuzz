struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> bool {
    var var_0 = arg_1.d.x;
    global0 = abs(abs(-1i));
    let var_1 = arg_0;
    global0 = arg_1.a.a.x;
    let var_2 = arg_1.e;
    return any(vec2<bool>(!select(any(vec4<bool>(arg_1.a.c.x, true, false, true)), true, true), true));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_2(u_input.c, vec2<bool>(true && arg_3.x, true), arg_3.wwy);
    let var_1 = Struct_3(Struct_2(select(u_input.c, vec3<i32>(u_input.c.x, 1i, -19656i) | ~vec3<i32>(-28134i, -37487i, 1i), var_0.c.x && true), vec2<bool>(arg_3.x, func_3(_wgslsmith_f_op_f32(sign(1709f)), Struct_3(Struct_2(vec3<i32>(u_input.c.x, arg_1, arg_1), var_0.b, vec3<bool>(var_0.b.x, true, arg_3.x)), Struct_2(vec3<i32>(u_input.a.x, arg_1, var_0.a.x), vec2<bool>(false, arg_3.x), vec3<bool>(false, true, false)), arg_3, arg_3.wzy, Struct_1(15674i, var_0.c, vec2<u32>(1u, arg_0))))), select(select(select(vec3<bool>(true, var_0.c.x, false), vec3<bool>(arg_3.x, false, true), var_0.c.x), select(vec3<bool>(arg_3.x, arg_3.x, false), arg_3.yxx, false), true), vec3<bool>(false, !var_0.c.x, any(vec2<bool>(arg_3.x, false))), select(vec3<bool>(false, var_0.b.x, false), select(vec3<bool>(true, var_0.b.x, true), vec3<bool>(false, arg_3.x, false), arg_3.zzz), vec3<bool>(false, arg_3.x, true)))), var_0, arg_3, !select(select(select(arg_3.xwx, vec3<bool>(arg_3.x, var_0.c.x, false), var_0.c.x), select(var_0.c, vec3<bool>(var_0.c.x, var_0.c.x, true), var_0.c), arg_3.yxw), vec3<bool>(arg_2.x != 1000f, true, true), false), Struct_1(~abs(max(arg_1, -34327i)), select(select(select(arg_3.xzy, vec3<bool>(var_0.c.x, var_0.b.x, false), vec3<bool>(var_0.c.x, false, false)), vec3<bool>(true, false, arg_3.x), !var_0.c), select(select(vec3<bool>(true, true, false), var_0.c, vec3<bool>(false, arg_3.x, true)), !arg_3.yxx, var_0.c.x), !(!var_0.c)), vec2<u32>((58429u ^ u_input.b.x) & 0u, 35288u)));
    var var_2 = vec4<u32>(0u, var_1.e.c.x, 4294967295u, min(~var_1.e.c.x, firstLeadingBit(arg_0)));
    let var_3 = vec3<bool>(!(_wgslsmith_f_op_f32(ceil(arg_2.x)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1263f), arg_2.x)), var_0.b.x, var_0.b.x);
    let var_4 = var_1.b;
    return !all(vec4<bool>(var_0.b.x, false, !arg_3.x, all(!arg_3)));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(u_input.a.x, !vec3<bool>(true, true, func_2(u_input.b.x, u_input.c.x, vec2<f32>(861f, 883f), vec4<bool>(false, true, true, false)) & func_3(-545f, Struct_3(Struct_2(u_input.c, vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_2(vec3<i32>(5852i, 2897i, 6617i), vec2<bool>(true, false), vec3<bool>(false, true, true)), vec4<bool>(false, false, true, true), vec3<bool>(false, true, false), Struct_1(24585i, vec3<bool>(false, true, true), u_input.b)))), u_input.b);
    var var_1 = Struct_3(Struct_2(u_input.c, var_0.b.yz, select(vec3<bool>(any(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), true, true), select(vec3<bool>(true, false, var_0.b.x), vec3<bool>(true, true, false), select(var_0.b, var_0.b, vec3<bool>(var_0.b.x, true, true))), vec3<bool>(var_0.b.x, true, true))), Struct_2(min(u_input.a.ywy | u_input.c, select(-u_input.c, vec3<i32>(2147483647i, var_0.a, var_0.a), !var_0.b.x)), var_0.b.xz, vec3<bool>(true, false | !var_0.b.x, select(true, true, var_0.b.x))), !(!vec4<bool>(var_0.b.x, any(var_0.b.xx), var_0.b.x, any(vec4<bool>(true, false, true, true)))), select(!vec3<bool>(var_0.b.x, u_input.a.x < 1i, !var_0.b.x), select(vec3<bool>(var_0.b.x, false, true), !(!vec3<bool>(true, var_0.b.x, false)), var_0.b), !var_0.b.x), Struct_1(countOneBits(var_0.a), var_0.b, _wgslsmith_mod_vec2_u32(vec2<u32>(min(var_0.c.x, 44649u), u_input.b.x >> (4294967295u % 32u)), vec2<u32>(u_input.b.x, 4294967295u) ^ u_input.b)));
    var var_2 = var_1.e;
    var_2 = var_1.e;
    var_2 = Struct_1(-1i, select(vec3<bool>(var_1.a.c.x, true, var_0.b.x), vec3<bool>(select(false, true, select(var_1.c.x, false, false)), !(var_0.b.x != var_0.b.x), true), vec3<bool>(_wgslsmith_add_u32(var_2.c.x, u_input.b.x) != _wgslsmith_mod_u32(var_2.c.x, 47197u), (115119u ^ var_2.c.x) == var_2.c.x, all(select(vec4<bool>(false, var_1.b.c.x, true, false), var_1.c, vec4<bool>(true, false, var_0.b.x, true))))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.c.x, ~43288u), max(var_2.c, var_0.c)), firstTrailingBit(var_0.c.x)));
    return var_1.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 23089i;
    var var_0 = Struct_3(Struct_2(abs(vec3<i32>(u_input.c.x >> (u_input.b.x % 32u), func_1(), reverseBits(u_input.a.x))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), !select(true, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), func_3(1820f, Struct_3(Struct_2(vec3<i32>(29249i, u_input.a.x, u_input.a.x), vec2<bool>(true, true), vec3<bool>(false, true, true)), Struct_2(u_input.c, vec2<bool>(false, true), vec3<bool>(true, false, false)), vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), Struct_1(13414i, vec3<bool>(true, true, false), vec2<u32>(3239u, u_input.b.x)))))), Struct_2(vec3<i32>(u_input.a.x, select(u_input.c.x, u_input.c.x, false), ~7967i) | _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -1i), vec3<i32>(u_input.a.x, u_input.a.x, 1i)), vec2<bool>(func_2(68525u, -41913i, vec2<f32>(-818f, 1121f), vec4<bool>(false, false, false, false)) && true, true), vec3<bool>(!any(vec3<bool>(true, true, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), true)), vec4<bool>(false, any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true)), any(vec4<bool>(true, u_input.b.x < 0u, u_input.a.x >= 7262i, true)), -19501i <= func_1()), !vec3<bool>(true, select(true, true, true), true), Struct_1(-15977i << (u_input.b.x % 32u), vec3<bool>(!any(vec4<bool>(false, false, true, false)), any(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, true, false))), vec2<u32>(select(~69491u, 1u, false), ~(~1u))));
    let var_1 = Struct_1(-1i, vec3<bool>(false, false | !(var_0.d.x && false), func_3(_wgslsmith_f_op_f32(sign(896f)), Struct_3(Struct_2(u_input.a.wxz, var_0.a.b, vec3<bool>(var_0.d.x, var_0.a.c.x, var_0.c.x)), Struct_2(vec3<i32>(u_input.c.x, var_0.b.a.x, -11104i), var_0.a.c.zx, var_0.e.b), vec4<bool>(var_0.c.x, var_0.c.x, true, true), var_0.d, Struct_1(u_input.c.x, vec3<bool>(false, var_0.d.x, var_0.d.x), vec2<u32>(0u, u_input.b.x)))) | var_0.b.b.x), max(abs(max(_wgslsmith_sub_vec2_u32(var_0.e.c, vec2<u32>(u_input.b.x, u_input.b.x)), var_0.e.c)), abs(var_0.e.c)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(823f + 1f) * _wgslsmith_f_op_f32(select(399f, 1000f, all(vec4<bool>(false, true, var_0.a.c.x, var_1.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1084f), _wgslsmith_div_f32(-1158f, 1000f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2680f * -277f), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(1216f))))))));
    var_0 = Struct_3(var_0.b, var_0.b, var_0.c, vec3<bool>(var_1.b.x, var_1.b.x, true), Struct_1(-var_0.e.a, select(vec3<bool>(true, any(var_0.a.c), var_0.e.b.x), select(var_1.b, vec3<bool>(var_0.c.x, true, var_0.d.x), var_0.a.b.x), select(var_0.b.c, vec3<bool>(false, var_0.d.x, var_1.b.x), !var_1.b)), vec2<u32>(~_wgslsmith_add_u32(u_input.b.x, 4294967295u), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, var_2.x, 962f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 857f, var_2.x) + vec3<f32>(-1622f, 957f, 253f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(453f, -276f, 1000f), vec3<f32>(var_2.x, var_2.x, var_2.x), false))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_div_f32(194f, -1034f), var_2.x) - vec3<f32>(1248f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - -1288f))))));
}

