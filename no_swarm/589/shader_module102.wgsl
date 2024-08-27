struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(0u, 42519i, 0i), Struct_1(0u, 2147483647i, i32(-2147483648))), Struct_1(33567u, -818i, -33365i), Struct_2(Struct_1(0u, 39812i, 2147483647i), Struct_1(1002u, 40262i, 14914i)), Struct_1(1u, -10290i, -54374i), Struct_1(21446u, 2147483647i, -7773i));

var<private> global1: array<Struct_4, 21>;

var<private> global2: Struct_5 = Struct_5(Struct_2(Struct_1(4294967295u, 48690i, -31265i), Struct_1(1u, 18018i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(4294967295u, 0i, i32(-2147483648)), Struct_1(7798u, -2822i, 0i)), Struct_1(101094u, 33615i, 1i), Struct_2(Struct_1(25238u, i32(-2147483648), 58622i), Struct_1(46884u, 7824i, 12047i)), Struct_1(1253u, i32(-2147483648), 720i), Struct_1(1u, 0i, 0i)), Struct_3(Struct_2(Struct_1(1u, -81491i, 1i), Struct_1(0u, i32(-2147483648), -45565i)), Struct_1(144u, 68416i, 95024i), Struct_2(Struct_1(0u, 1i, 21706i), Struct_1(0u, -43939i, 29680i)), Struct_1(39374u, i32(-2147483648), 35620i), Struct_1(96367u, -2060i, 24581i)), Struct_4(vec3<f32>(-899f, -1000f, 518f)));

var<private> global3: Struct_5 = Struct_5(Struct_2(Struct_1(46201u, -1i, -24607i), Struct_1(44106u, 29235i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(1u, -64820i, -2234i), Struct_1(4294967295u, 0i, 2147483647i)), Struct_1(1u, 2147483647i, 1i), Struct_2(Struct_1(0u, -11803i, 2147483647i), Struct_1(21048u, 32552i, -1i)), Struct_1(31729u, 48087i, 1i), Struct_1(58374u, -21156i, 2147483647i)), Struct_3(Struct_2(Struct_1(0u, -5191i, 0i), Struct_1(4294967295u, -1i, -4528i)), Struct_1(1u, -1i, -43042i), Struct_2(Struct_1(4294967295u, 1i, 49988i), Struct_1(18678u, -1i, 20632i)), Struct_1(33235u, 0i, -13836i), Struct_1(10298u, 1i, -27043i)), Struct_4(vec3<f32>(-476f, -1334f, 1482f)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    var var_0 = Struct_5(global2.a, global2.c, global3.c, Struct_4(_wgslsmith_f_op_vec3_f32(round(global3.d.a))));
    let var_1 = vec3<i32>(-2147483647i, ~(-((global0.e.c << (0u % 32u)) | countOneBits(global3.b.d.c))), global2.c.c.a.b ^ countOneBits(firstLeadingBit(-u_input.b)));
    var var_2 = global2.a.b.a;
    var_2 = (~23629u << (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_1, arg_0)), firstTrailingBit(vec2<u32>(4294967295u, 18719u))) % 32u)) & var_0.c.b.a;
    var var_3 = !(!vec4<bool>(any(vec3<bool>(false, true, false)), true, !any(vec4<bool>(false, true, false, true)), true));
    return -26811i;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>) -> vec4<bool> {
    global0 = global2.c;
    global2 = Struct_5(global2.b.a, Struct_3(global0.c, global3.a.b, Struct_2(global2.b.d, Struct_1(global2.b.d.a, ~global3.b.e.c, -1i)), global3.b.c.b, Struct_1(~_wgslsmith_div_u32(u_input.d, 0u), -1i, -func_3(global2.c.b.a, global3.b.d.a))), Struct_3(global2.c.a, global3.b.d, global2.b.a, global2.a.a, Struct_1(~63521u >> ((global2.a.b.a ^ 6347u) % 32u), _wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(14860i, global3.c.d.c, 2147483647i)), -1i)), arg_0);
    var var_0 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(1u, 34910u)), firstLeadingBit(vec2<u32>(global3.c.e.a, global2.b.a.a.a) | vec2<u32>(71486u, 48469u))), vec2<u32>(select(4294967295u ^ u_input.d, firstTrailingBit(1u), true), select(global2.b.e.a, 1848u >> (global2.a.a.a % 32u), true)));
    var var_1 = arg_1.xz;
    global3 = Struct_5(Struct_2(global0.d, global2.b.b), Struct_3(global3.b.a, Struct_1(u_input.d >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a, var_0.x, global2.b.b.a), vec3<u32>(1u, 0u, 99221u)) % 32u), abs(-70991i >> (0u % 32u)), -(~global3.a.b.b)), global0.a, global2.c.d, Struct_1(var_0.x << (global3.a.b.a % 32u), u_input.e.x, ~u_input.c)), Struct_3(global0.a, Struct_1(0u, global2.c.b.b, 1i), Struct_2(Struct_1(1u, 71105i >> (u_input.d % 32u), ~global0.a.b.c), Struct_1(firstLeadingBit(u_input.d), 10861i, global2.a.b.b)), global2.b.a.b, global3.a.b), Struct_4(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(abs(-412f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-270f))))));
    return select(!vec4<bool>(global2.d.a.x >= _wgslsmith_f_op_f32(-global2.d.a.x), true, true || all(vec2<bool>(true, arg_1.x)), any(select(arg_1, vec3<bool>(false, false, arg_1.x), arg_1))), vec4<bool>(true, var_1.x != var_1.x, arg_1.x, all(arg_1)), all(arg_1.yx));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = 270f;
    let var_1 = func_2(global3.d, vec3<bool>(true, false, !((global0.c.b.c & 2147483647i) > firstLeadingBit(global2.b.a.b.c))));
    var var_2 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(arg_1.xzw), arg_1.yxx), 21u)], !select(!vec3<bool>(false, var_1.x, true), func_2(global2.d, vec3<bool>(false, var_1.x, var_1.x)).xyz, vec3<bool>(!var_1.x, var_1.x, var_1.x)));
    let var_3 = any(select(var_2.wyw, select(var_1.wyz, var_2.yyw, all(func_2(global3.d, vec3<bool>(false, var_2.x, false)).yyz)), var_1.xwx));
    var var_4 = Struct_5(Struct_2(global0.e, Struct_1(_wgslsmith_dot_vec3_u32(~arg_1.wyz, firstLeadingBit(arg_1.ywy)), (1i >> (0u % 32u)) >> (min(arg_2.a.a, 40148u) % 32u), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1930i, global0.e.c, 0i)))), global3.b, global2.c, global3.d);
    return Struct_1(select(36152u, u_input.d, var_2.x), _wgslsmith_sub_i32(-abs(global2.b.a.a.c), abs(-_wgslsmith_mult_i32(17191i, 7007i))), _wgslsmith_mod_i32(arg_0, arg_2.a.c));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_2 {
    global1 = array<Struct_4, 21>();
    var var_0 = Struct_3(Struct_2(Struct_1(global2.a.a.a, -arg_0, 33062i), arg_1.d), arg_1.e, Struct_2(arg_1.b, arg_1.b), func_1(-((10605i & global2.c.a.b.b) ^ global0.b.c), countOneBits((vec4<u32>(11126u, 6188u, arg_1.b.a, global0.a.b.a) ^ vec4<u32>(u_input.d, global2.c.c.a.a, arg_1.b.a, 24778u)) & select(vec4<u32>(arg_1.e.a, u_input.d, 0u, 49037u), vec4<u32>(18016u, 55102u, 1u, u_input.d), false)), Struct_2(global2.c.a.a, func_1(_wgslsmith_add_i32(37581i, 16647i), vec4<u32>(global2.c.b.a, 48684u, 4294967295u, 1u) >> (vec4<u32>(arg_1.a.b.a, 35992u, 27076u, global2.a.b.a) % vec4<u32>(32u)), arg_1.c, _wgslsmith_f_op_f32(986f - global3.d.a.x))), arg_2.x), global3.a.a);
    global1 = array<Struct_4, 21>();
    var var_1 = Struct_5(global0.c, global2.b, arg_1, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, 1f)));
    return Struct_2(func_1(_wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(arg_0, var_0.e.b, -34212i, arg_1.e.c))), -vec4<i32>(14008i, global0.c.b.b, global2.b.a.a.b, 23214i)), ~max(reverseBits(vec4<u32>(global0.d.a, 1u, 1u, arg_1.e.a)), vec4<u32>(arg_1.c.a.a, global2.b.c.a.a, 52668u, global0.a.a.a)), var_0.a, _wgslsmith_f_op_f32(ceil(var_1.d.a.x))), Struct_1(~u_input.d, -1i, abs(global0.a.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(max(2147483647i, ~(i32(-1i) * -2147483647i)), Struct_3(Struct_2(func_1(50024i, vec4<u32>(u_input.d, global2.a.b.a, 0u, u_input.d), Struct_2(global0.b, global0.d), global3.d.a.x), Struct_1(global2.b.b.a, -18719i, global3.a.b.c)), func_1(100318i, _wgslsmith_mod_vec4_u32(vec4<u32>(92320u, 23100u, 4294967295u, global3.c.e.a), vec4<u32>(u_input.d, u_input.d, 1u, 1u)), global3.b.c, _wgslsmith_f_op_f32(step(618f, 640f))), global2.b.c, Struct_1(~global3.b.b.a, ~global2.a.a.c, select(-1990i, 37970i, false)), global2.b.a.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.d.a.x)) * global3.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.d.a.x))), _wgslsmith_f_op_f32(global2.d.a.x + 153f)), vec4<bool>(all(func_2(Struct_4(global3.d.a), vec3<bool>(false, true, true)).zw), true, true, true)), Struct_1(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.e.a, global3.c.e.a), vec2<u32>(60017u, 4294967295u)) ^ func_4(-9295i, global3.b, global2.d.a, vec4<bool>(true, true, false, true)).a.a), firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.e, u_input.e | u_input.a)), ~14414i), global3.b.c, global2.a.b, Struct_1(73833u, min(_wgslsmith_dot_vec2_i32(u_input.a.xy | vec2<i32>(global3.b.d.b, -24537i), vec2<i32>(u_input.b, 1i)), func_1(global3.b.e.c, countOneBits(vec4<u32>(12117u, global3.a.a.a, global3.a.b.a, global0.b.a)), func_4(29416i, global3.c, global2.d.a, vec4<bool>(true, true, false, true)), 2470f).c), i32(-1i) * -2147483647i));
    global0 = Struct_3(func_4((i32(-1i) * -44559i) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0.c.a.a, 4294967295u), ~vec3<u32>(var_0.d.a, 4294967295u, 4294967295u)) % 32u), global2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.a.x, -901f, -1137f)), vec3<f32>(2093f, global3.d.a.x, 2392f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global3.d.a)))), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, global2.b.e.a >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global0.a.b.a, global3.c.d.a), vec4<u32>(1u, global3.b.b.a, 31886u, 4294967295u)))), func_1(_wgslsmith_add_i32(global0.d.c, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.e), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.b.b, var_0.b.b, var_0.d.b), u_input.e, vec3<i32>(-2147483647i, global0.c.b.c, global2.c.b.c)))), vec4<u32>(min(func_4(45451i, global3.b, vec3<f32>(-1086f, global3.d.a.x, 1000f), vec4<bool>(false, true, true, true)).b.a, _wgslsmith_add_u32(var_0.c.a.a, var_0.a.b.a)), global3.b.d.a, u_input.d, var_0.d.a | 1u), func_4(var_0.a.a.c, Struct_3(var_0.c, global3.a.a, global0.a, var_0.b, Struct_1(global3.a.b.a, global2.c.b.c, 0i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.a.x, -120f, global2.d.a.x), global3.d.a, vec3<bool>(true, true, false))))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), global2.d.a.x), func_4(-2147483647i, global2.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(200f, -1237f, 1000f))))), vec4<bool>(true, !any(vec3<bool>(true, false, true)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), false)), Struct_1(abs(global3.a.a.a), global2.b.b.c, -1i >> (~u_input.d % 32u)), Struct_1(min(firstLeadingBit(14743u), 1u), _wgslsmith_clamp_i32(-1i, 34721i, func_1(-46125i | var_0.c.b.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.b.e.a, 105009u, 1u, u_input.d), vec4<u32>(global2.c.b.a, global2.c.b.a, 4294967295u, 1u), vec4<u32>(global3.c.b.a, var_0.d.a, 12482u, 23698u)), Struct_2(var_0.c.b, var_0.b), _wgslsmith_f_op_f32(-global3.d.a.x)).c), _wgslsmith_mult_i32(min(-27076i, u_input.b), firstTrailingBit(~12072i))));
    global3 = Struct_5(func_4(-17626i, Struct_3(var_0.a, func_1(i32(-1i) * -1i, vec4<u32>(40461u, var_0.b.a, 52564u, var_0.d.a), func_4(-9888i, global3.c, vec3<f32>(global3.d.a.x, global2.d.a.x, global3.d.a.x), vec4<bool>(false, false, false, false)), 1000f), Struct_2(var_0.c.b, Struct_1(6177u, global3.b.d.c, -16045i)), func_4(3572i, Struct_3(var_0.a, global2.b.e, Struct_2(global3.a.a, Struct_1(0u, 0i, global0.e.c)), Struct_1(global2.a.a.a, global3.b.a.a.c, -1i), global3.a.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-402f, global2.d.a.x, 433f))), vec4<bool>(true, true, true, true)).a, global0.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.d.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, 760f, -561f))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), global2.b, global3.b, global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.b.a);
}

