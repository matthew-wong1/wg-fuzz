struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(57901u, 0u, 97981u, 4294967295u), vec4<u32>(125394u, 56320u, 1u, 23006u), vec4<u32>(12122u, 4294967295u, 59953u, 1u), vec4<u32>(0u, 1u, 0u, 29954u), vec4<u32>(20043u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 1u, 8178u, 4294967295u), vec4<u32>(44522u, 23364u, 16562u, 2455u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(59711u, 0u, 0u, 1u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(1u, 4294967295u, 16906u, 13026u), vec4<u32>(48722u, 1u, 0u, 40345u), vec4<u32>(67339u, 0u, 1u, 10446u), vec4<u32>(1u, 59988u, 0u, 1u), vec4<u32>(1u, 24113u, 2782u, 4294967295u), vec4<u32>(6244u, 1u, 48504u, 896u), vec4<u32>(50427u, 58884u, 4294967295u, 20868u), vec4<u32>(4294967295u, 76474u, 4294967295u, 13776u), vec4<u32>(4294967295u, 24223u, 1u, 4294967295u), vec4<u32>(69350u, 19079u, 1u, 36439u), vec4<u32>(22795u, 10535u, 1u, 88244u), vec4<u32>(1u, 0u, 1275u, 33895u), vec4<u32>(88532u, 0u, 1u, 4294967295u), vec4<u32>(80600u, 39316u, 4294967295u, 1u), vec4<u32>(53235u, 97966u, 4294967295u, 0u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 13035u, 4294967295u, 12645u), vec4<u32>(4294967295u, 32449u, 0u, 1u));

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(select(-1382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1223f - 868f)), any(global1.yy)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(395f, 302f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)) + _wgslsmith_f_op_f32(trunc(-628f))), var_1.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.x)))) * _wgslsmith_f_op_f32(ceil(620f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1500f, var_1.x, 545f, 2461f))))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(194f + -1000f), -904f, _wgslsmith_f_op_f32(683f * var_1.x)), vec4<f32>(var_1.x, 2027f, -352f, -1345f), !select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, false, true, false), vec4<bool>(false, false, global1.x, global1.x)))))), vec4<bool>(any(select(!vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), !global1.x)), true, !global1.x, true)));
    var var_3 = firstLeadingBit(-2147483647i);
    var var_4 = ~u_input.a;
    return ~vec2<u32>(1u, _wgslsmith_mod_u32(1u, 30212u));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = u_input.b >> (36827u % 32u);
    let var_1 = Struct_4(Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(5329u, 51800u), vec2<u32>(1u, 1u)), func_3(select(vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.b, -52056i), vec4<bool>(true, global1.x, global1.x, false)))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(29576i, 0i)), -5375i, 1i), global1.zz, !global1.x), select(countOneBits(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(28341i, u_input.a), vec2<i32>(-24384i, 1i)))), reverseBits(~vec2<i32>(u_input.a, 68514i)), all(vec3<bool>(false, u_input.b <= u_input.b, global1.x || true))), select(!vec2<bool>(any(vec2<bool>(global1.x, global1.x)), all(vec4<bool>(false, global1.x, false, false))), !vec2<bool>(false, !global1.x), vec2<bool>(all(!vec3<bool>(true, global1.x, true)), any(!vec4<bool>(global1.x, global1.x, true, false)))));
    var var_2 = var_1.a;
    var var_3 = Struct_2(var_1.a, Struct_1(~select(~var_1.a.a, ~var_1.a.a, vec2<bool>(false, false)), vec3<i32>(var_1.b.x, -countOneBits(-12880i), select(_wgslsmith_sub_i32(u_input.a, 16940i), min(var_1.b.x, var_1.a.b.x), true)), select(select(select(vec2<bool>(var_2.d, false), vec2<bool>(true, var_2.c.x), global1.x), vec2<bool>(false, var_1.c.x), select(var_1.a.c, vec2<bool>(var_2.c.x, var_1.a.d), vec2<bool>(false, var_2.c.x))), var_1.a.c, select(global1.zx, !global1.yy, true)), true));
    global1 = vec3<bool>(all(!(!select(vec3<bool>(var_1.a.d, false, var_3.b.d), vec3<bool>(var_2.d, var_2.c.x, false), true))), select(false, all(!(!vec4<bool>(false, true, true, global1.x))), ~(12342u ^ var_2.a.x) < var_2.a.x), var_1.a.d);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1555f))), arg_0)));
}

fn func_1(arg_0: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -862f))))), Struct_1(~vec2<u32>(~20053u, firstTrailingBit(7079u)), vec3<i32>(i32(-1i) * -54205i, min(1i, firstTrailingBit(11592i)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 79247i), vec2<i32>(21892i, u_input.a)), u_input.a)), !select(select(vec2<bool>(true, arg_0.x), arg_0.xy, global1.yz), vec2<bool>(arg_0.x, true), true), all(vec4<bool>(global1.x, false, true, true))), arg_0.yww);
    let var_1 = 1368f;
    var_0 = Struct_3(543f, var_0.b, arg_0.xwx);
    let var_2 = !any(arg_0);
    return abs(abs(select(vec3<u32>(~42046u, ~var_0.b.a.x, 15343u << (var_0.b.a.x % 32u)), vec3<u32>(1u, var_0.b.a.x << (0u % 32u), 1u), !select(arg_0.wwx, vec3<bool>(false, global1.x, true), true))));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b, -_wgslsmith_mod_i32(1i, -1i), u_input.b, select(_wgslsmith_dot_vec2_i32(arg_0.yz, vec2<i32>(0i, u_input.a)), arg_0.x, true)), _wgslsmith_mod_vec4_i32(-abs(vec4<i32>(u_input.a, u_input.b, var_0, 38451i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 14945i, u_input.b, arg_0.x) << (global0[_wgslsmith_index_u32(19648u, 28u)] % vec4<u32>(32u)), -vec4<i32>(arg_0.x, -480i, var_0, u_input.b))), global1.x), -(~(~vec4<i32>(2147483647i, 39344i, u_input.a, u_input.a))) << (reverseBits(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    let var_2 = true;
    let var_3 = -6732i;
    let var_4 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(24656u, 1u)), select(vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), global1.xy), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(1u, 0u)), ~vec2<u32>(1u, 51447u))), _wgslsmith_mult_vec3_i32(vec3<i32>(~arg_0.x, min(var_3, 1i), var_1.x), var_1.xzx), vec2<bool>(true, var_2), true), Struct_1(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, 45121u)), firstLeadingBit(vec2<u32>(1u, 5517u))), reverseBits(vec3<i32>(~u_input.a, 19196i, var_1.x)), vec2<bool>(any(vec3<bool>(var_2, var_2, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, var_2, false), global1.x))), true));
    return Struct_1(_wgslsmith_add_vec2_u32(firstTrailingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(37602u, var_4.a.a.x), var_4.b.a)), _wgslsmith_clamp_vec2_u32(var_4.b.a, vec2<u32>(12966u, ~var_4.a.a.x), (vec2<u32>(var_4.b.a.x, 81122u) & var_4.b.a) & ~vec2<u32>(1u, 26213u))), max(-_wgslsmith_div_vec3_i32(vec3<i32>(-25437i, 3860i, -48252i), arg_0), vec3<i32>(i32(-1i) * -2882i, firstLeadingBit(-u_input.b), firstTrailingBit(48672i))), !select(!select(var_4.a.c, global1.yx, global1.x), global1.zy, !all(vec2<bool>(global1.x, var_4.b.c.x))), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 28>();
    var var_0 = Struct_4(func_4((-vec3<i32>(u_input.b, -5589i, u_input.a) ^ -vec3<i32>(u_input.b, u_input.a, 8278i)) << (~func_1(vec4<bool>(false, global1.x, global1.x, global1.x)) % vec3<u32>(32u))), ~vec2<i32>(-2147483647i, u_input.a), global1.xy);
    global0 = array<vec4<u32>, 28>();
    var_0 = Struct_4(Struct_1(vec2<u32>(var_0.a.a.x, ~5714u) << (vec2<u32>(42879u, 1u) % vec2<u32>(32u)), ~abs(firstLeadingBit(var_0.a.b)), vec2<bool>(any(select(vec4<bool>(global1.x, global1.x, global1.x, var_0.a.d), vec4<bool>(global1.x, var_0.a.d, false, global1.x), true)), any(vec2<bool>(true, true))), func_4(vec3<i32>(i32(-1i) * -24189i, _wgslsmith_div_i32(u_input.b, var_0.b.x), max(u_input.a, -60780i))).d), var_0.a.b.yy, select(var_0.a.c, global1.xz, global1.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2704f)))), _wgslsmith_f_op_f32(func_2(1477f)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1085f))))), _wgslsmith_f_op_f32(trunc(1282f)))), func_4(var_0.a.b), vec3<bool>(true, true, true));
    var var_3 = firstTrailingBit(abs(u_input.a));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-414f + var_1.x), 432f);
    var var_4 = firstTrailingBit(var_2.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(~var_2.b.a.x, 66598u), var_2.b.a.x, ~31592u, ~(44632u >> (_wgslsmith_mult_u32(var_2.b.a.x, var_0.a.a.x) % 32u))));
}

