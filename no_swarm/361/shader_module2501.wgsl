struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), 37732u, 49153i);

var<private> global1: i32 = -1687i;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(false, true, true, true), 0u, i32(-2147483648)), Struct_1(vec4<bool>(false, true, true, false), 5902u, 1i), Struct_1(vec4<bool>(true, false, false, true), 0u, 1i), Struct_1(vec4<bool>(true, false, true, false), 19337u, 13683i), Struct_1(vec4<bool>(true, true, true, true), 49537u, i32(-2147483648)), Struct_1(vec4<bool>(false, true, false, false), 1u, -28746i), Struct_1(vec4<bool>(true, false, true, true), 4294967295u, 1i), Struct_1(vec4<bool>(true, false, false, true), 1u, 1i), Struct_1(vec4<bool>(true, false, true, false), 4294967295u, -3735i), Struct_1(vec4<bool>(true, false, true, true), 4294967295u, -40554i), Struct_1(vec4<bool>(false, true, false, true), 1u, 464i), Struct_1(vec4<bool>(false, false, true, false), 4276u, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, false), 4294967295u, -27917i), Struct_1(vec4<bool>(false, false, false, false), 6608u, 37955i), Struct_1(vec4<bool>(false, false, false, false), 1u, 11041i), Struct_1(vec4<bool>(false, false, false, false), 1u, 5920i), Struct_1(vec4<bool>(true, true, false, true), 45906u, 15396i), Struct_1(vec4<bool>(false, false, false, true), 1u, i32(-2147483648)), Struct_1(vec4<bool>(false, true, true, true), 0u, 2147483647i), Struct_1(vec4<bool>(false, false, true, false), 4294967295u, 17204i), Struct_1(vec4<bool>(false, true, true, true), 0u, 5963i), Struct_1(vec4<bool>(true, true, true, true), 1u, 1i), Struct_1(vec4<bool>(true, true, false, false), 0u, 983i), Struct_1(vec4<bool>(false, false, true, true), 1u, 2147483647i), Struct_1(vec4<bool>(true, true, true, true), 1u, -1i), Struct_1(vec4<bool>(true, false, true, false), 0u, 24067i), Struct_1(vec4<bool>(true, false, true, true), 0u, 1i), Struct_1(vec4<bool>(true, false, false, false), 0u, 2147483647i), Struct_1(vec4<bool>(false, true, true, false), 4294967295u, i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, false), 77751u, 11836i), Struct_1(vec4<bool>(true, false, true, false), 4294967295u, 3007i));

var<private> global3: array<vec4<f32>, 22>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    global0 = arg_0;
    var var_0 = 540f;
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    var var_1 = select(vec3<i32>(~global0.c, _wgslsmith_clamp_i32(reverseBits(global0.c), -67909i, -arg_0.c), 10997i), -u_input.a, any(!arg_0.a));
    return arg_0.c;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(-59717i), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(global0.c, u_input.a.x))), func_3(Struct_1(arg_1.a, 42415u, arg_1.c), Struct_2(vec3<f32>(arg_0.a.x, 868f, arg_0.a.x), vec4<bool>(false, global0.a.x, false, true))), -arg_1.c)), ~vec2<i32>(0i, _wgslsmith_mod_i32(~global0.c, -15380i)));
    let var_1 = abs(-u_input.a.xy);
    let var_2 = ~min(vec2<u32>(71909u, 13466u), firstTrailingBit(~vec2<u32>(74997u, 0u)));
    global3 = array<vec4<f32>, 22>();
    let var_3 = arg_0;
    return ~_wgslsmith_add_u32(var_2.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(71610u, var_2.x, global0.b)), vec3<u32>(global0.b, arg_1.b, ~1u)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2243f, -864f)))))), vec2<f32>(1882f, -404f), true));
    var var_1 = global0.b;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 1879f, 2053f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 347f, var_0.x))))))), select(!global0.a, vec4<bool>((-2072f > var_0.x) && any(global0.a.xww), all(arg_0.a), !arg_0.a.x, !arg_0.a.x), true));
    var_1 = arg_0.b;
    let var_3 = global2[_wgslsmith_index_u32(global0.b, 31u)];
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_2.a.x, 189f)), 211f, var_0.x)), vec3<f32>(-109f, -724f, -387f)), select(select(var_3.a, vec4<bool>(true, false, 10318u <= arg_0.b, true), any(select(vec2<bool>(var_3.a.x, global0.a.x), vec2<bool>(arg_0.a.x, arg_0.a.x), true))), var_2.b, var_2.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    global3 = array<vec4<f32>, 22>();
    let var_0 = arg_0.b;
    var var_1 = global2[_wgslsmith_index_u32(max(global0.b, abs(~global0.b)) | arg_0.b, 31u)];
    var var_2 = arg_0.a.wyx;
    var var_3 = ~(-abs(-(2147483647i >> (var_0 % 32u))));
    return Struct_1(select(select(!select(vec4<bool>(arg_2.b.x, false, var_1.a.x, false), arg_2.b, vec4<bool>(var_1.a.x, false, var_1.a.x, arg_0.a.x)), vec4<bool>(select(false, false, global0.a.x), select(true, true, true), false && arg_1.x, true), all(arg_2.b.ww)), func_4(Struct_1(!vec4<bool>(false, arg_2.b.x, false, true), 28180u, -1714i)).b, func_4(Struct_1(vec4<bool>(true, true, false, true), 1u, ~global0.c)).b), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(global0.b, global0.b), vec2<u32>(0u, global0.b), true) & firstLeadingBit(vec2<u32>(arg_0.b, 66476u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(32566u, 16134u))), arg_0.c);
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global3 = array<vec4<f32>, 22>();
    global3 = array<vec4<f32>, 22>();
    global3 = array<vec4<f32>, 22>();
    var var_0 = global0.a;
    var_0 = !vec4<bool>(all(vec3<bool>(true, global0.a.x, var_0.x)) || true, true, true, func_5(arg_0, vec4<bool>(true, true, false, var_0.x), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1655f, -263f, -614f) + vec3<f32>(624f, 412f, -313f)), func_5(arg_0, vec4<bool>(true, arg_0.a.x, global0.a.x, var_0.x), Struct_2(vec3<f32>(1385f, 504f, 228f), vec4<bool>(true, false, var_0.x, arg_0.a.x))).a)).a.x);
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1012f, -679f, -870f)), vec3<f32>(108f, -401f, -819f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(685f, -2188f, 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(378f, -1100f, 427f))))), !(!vec4<bool>(global0.c != u_input.a.x, !var_0.x, true, any(arg_0.a))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_6(func_5(global2[_wgslsmith_index_u32(23063u ^ min(~global0.b, 1u), 31u)], !vec4<bool>(false, false, all(vec2<bool>(global0.a.x, global0.a.x)), select(global0.a.x, global0.a.x, global0.a.x)), func_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(Struct_2(vec3<f32>(-1258f, -831f, -631f), vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x)), global2[_wgslsmith_index_u32(5740u, 31u)], 1453f), global0.b), 31u)])), -_wgslsmith_sub_i32(-11972i, -(~global0.c)));
    let var_1 = func_4(global2[_wgslsmith_index_u32(global0.b, 31u)]);
    var var_2 = all(!(!vec2<bool>(false, var_1.b.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a)) - var_1.a)), func_4(Struct_1(!vec4<bool>(false, var_0.b.x, global0.a.x, var_1.b.x), ~global0.b, global0.c)).b);
    return func_4(global2[_wgslsmith_index_u32(~77004u, 31u)]);
}

fn func_7(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(~(countOneBits(~(~27633u)) >> (~arg_3.x % 32u)), 31u)];
    var var_1 = func_5(func_5(Struct_1(vec4<bool>(true, true, false, true), arg_3.x, global0.c), var_0.a, func_1(~1i)), !select(vec4<bool>(var_0.a.x, arg_1.b.x, !var_0.a.x, true), var_0.a, vec4<bool>(!arg_1.b.x, global0.a.x, true, func_6(Struct_1(global0.a, 14362u, -2147483647i), -2147483647i).b.x)), func_6(func_5(global2[_wgslsmith_index_u32(abs(1u << (arg_3.x % 32u)), 31u)], vec4<bool>(arg_1.b.x, u_input.a.x < 20578i, !global0.a.x, true), Struct_2(vec3<f32>(arg_1.a.x, arg_1.a.x, -416f), !vec4<bool>(arg_1.b.x, false, var_0.a.x, global0.a.x))), (u_input.a.x >> (_wgslsmith_clamp_u32(1u, var_0.b, 82616u) % 32u)) & _wgslsmith_mod_i32(-8616i, _wgslsmith_mod_i32(arg_0, -8988i))));
    global0 = Struct_1(var_0.a, ~arg_3.x, i32(-1i) * -20807i);
    let var_2 = true;
    var var_3 = abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xz, select(u_input.a.yz, u_input.a.yy, true)), u_input.a.zy)) >= _wgslsmith_dot_vec2_i32(-(firstTrailingBit(vec2<i32>(var_1.c, global0.c)) << (_wgslsmith_mult_vec2_u32(arg_3, arg_3) % vec2<u32>(32u))), u_input.a.yx);
    return func_5(func_5(arg_2, select(select(arg_1.b, arg_1.b, !var_2), select(func_6(arg_2, -43808i).b, select(vec4<bool>(false, false, false, var_2), vec4<bool>(true, var_0.a.x, true, true), global0.a.x), arg_2.a.x), true), func_1(-arg_0)), vec4<bool>(any(!(!vec3<bool>(false, arg_2.a.x, global0.a.x))), arg_2.a.x, true, func_4(Struct_1(!global0.a, global0.b | arg_3.x, abs(var_1.c))).b.x), Struct_2(arg_1.a, arg_1.b)).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(global0.c, func_1(reverseBits(global0.c)), func_5(global2[_wgslsmith_index_u32(25032u, 31u)], global0.a, Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-236f, -1018f, -418f)))), vec4<bool>(false, !global0.a.x, 4294967295u != global0.b, 52991u >= global0.b))), vec2<u32>(global0.b, global0.b));
    var var_1 = _wgslsmith_div_vec2_i32(abs(select(vec2<i32>(global0.c, 75145i), u_input.a.xz, func_1(-global0.c).b.xz)), u_input.a.zz);
    var var_2 = !select(func_4(func_5(func_5(Struct_1(global0.a, global0.b, global0.c), global0.a, Struct_2(vec3<f32>(1566f, -1000f, 200f), vec4<bool>(global0.a.x, true, false, false))), global0.a, func_6(global2[_wgslsmith_index_u32(global0.b, 31u)], global0.c))).b.zzx, !vec3<bool>(true, all(vec2<bool>(global0.a.x, false)), false), global0.a.xyz);
    let var_3 = -18531i;
    var var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-472f - -639f))) + 1633f)), _wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(global0.b, global0.b, global0.b) ^ ~vec3<u32>(global0.b, global0.b, 64963u)), ~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(1u, global0.b, 39675u)), ~vec3<u32>(82473u, 584u, 1u))));
}

