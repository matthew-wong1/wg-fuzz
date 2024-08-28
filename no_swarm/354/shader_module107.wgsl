struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(false, false, vec4<i32>(16413i, -1i, -13495i, 0i), vec4<u32>(40996u, 25629u, 38607u, 907u));

var<private> global4: array<vec3<i32>, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1000f * arg_1.c.x)), global2.c.x, _wgslsmith_div_f32(1228f, -1000f), _wgslsmith_f_op_f32(-arg_2.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global2.c, vec4<f32>(arg_1.c.x, arg_1.b.x, arg_2.x, -209f), vec4<bool>(false, arg_1.d.x, global3.a, true))), vec4<f32>(379f, arg_1.b.x, arg_2.x, -673f)))))));
    let var_1 = arg_1;
    global3 = Struct_2(true, select(!(!(!arg_1.a.x)), 6367i > global3.c.x, !(1185f == _wgslsmith_f_op_f32(-878f + global2.b.x))), global3.c, ~(~vec4<u32>(reverseBits(arg_0), reverseBits(10477u), 4294967295u, firstTrailingBit(17954u))));
    let var_2 = Struct_1(!vec2<bool>(false, var_1.d.x & false), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_0.x, -1630f) + vec3<f32>(779f, -103f, global2.b.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(807f, var_0.x, 840f, 475f) * global2.c) - var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * global2.c.x), _wgslsmith_f_op_f32(-481f - 2090f), -1118f, _wgslsmith_f_op_f32(step(arg_1.c.x, 1407f))))), var_1.d);
    let var_3 = abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(~(global3.c.x >> (u_input.a % 32u)), countOneBits(max(global3.c.x, 1i))), global0.x));
    return true;
}

fn func_2() -> vec4<i32> {
    var var_0 = 0i;
    var var_1 = all(select(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(global2.a.x, global2.d.x, true, global2.a.x), !vec4<bool>(global3.b, global3.b, global2.a.x, global3.b), func_3(u_input.a, Struct_1(vec2<bool>(true, global3.b), global2.c.yww, global2.c, global2.a), global2.b.zx)), !(!vec4<bool>(false, false, global3.a, global3.a))), !vec4<bool>(true, false, global2.d.x, false), 957f >= global2.b.x));
    let var_2 = Struct_1(select(global2.d, vec2<bool>(global2.a.x, global2.d.x), true), global2.c.wxz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c - vec4<f32>(_wgslsmith_f_op_f32(min(global2.c.x, global2.c.x)), -181f, 1f, -1501f))), select(vec2<bool>(u_input.a < ~u_input.a, false), select(vec2<bool>(global3.b, !global2.a.x), select(vec2<bool>(true, global3.b), !global2.a, true), any(!vec3<bool>(global2.a.x, true, global3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(138f))) > global2.b.x));
    let var_3 = _wgslsmith_f_op_f32(-613f + 1049f);
    let var_4 = Struct_2(var_2.d.x, true, firstLeadingBit(global3.c), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~global3.d, global3.d), select(global3.d, vec4<u32>(39949u, 7532u, 28221u, 80508u), !var_2.a.x)));
    return _wgslsmith_sub_vec4_i32(var_4.c, _wgslsmith_mult_vec4_i32(-global3.c, vec4<i32>(~global3.c.x, global0.x, -firstTrailingBit(global3.c.x), global0.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global0 = vec2<i32>(_wgslsmith_sub_i32(14725i, reverseBits(global0.x)), global0.x);
    var var_0 = false;
    let var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c.zzy))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(220f, global2.c.x, 626f))))) + _wgslsmith_f_op_vec3_f32(-arg_1.c.zwy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-508f, _wgslsmith_f_op_f32(global2.b.x + 446f), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(floor(arg_1.c.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2574f, arg_1.c.x, -313f, global2.c.x)), _wgslsmith_f_op_vec4_f32(max(arg_1.c, arg_1.c)))))), vec2<bool>(_wgslsmith_f_op_f32(-arg_1.c.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1496f - global2.c.x)), any(select(!vec4<bool>(global2.d.x, arg_0.a, arg_2.a, false), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2.a, arg_1.d.x, false, arg_2.b), vec4<bool>(true, arg_1.d.x, true, false), vec4<bool>(true, false, true, false))))));
    var var_2 = firstTrailingBit(~global3.d.x);
    var_0 = false;
    return arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = global2.d.x;
    let var_1 = func_4(Struct_2(global2.d.x, !((global3.d.x <= 4294967295u) & true), func_2(), _wgslsmith_div_vec4_u32(max(vec4<u32>(1u, u_input.a, 8885u, 4294967295u), global3.d), vec4<u32>(global3.d.x, 4294967295u, u_input.a, u_input.a) & global3.d) & (vec4<u32>(4294967295u, 0u, 14625u, 1u) << (_wgslsmith_add_vec4_u32(global3.d, global3.d) % vec4<u32>(32u)))), Struct_1(select(!(!global2.d), select(vec2<bool>(global3.b, arg_0.x), vec2<bool>(global3.a, false), true), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c.yzx - _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, global2.b.x, arg_2), vec3<f32>(-245f, 641f, arg_2))) - vec3<f32>(_wgslsmith_f_op_f32(global2.c.x + global2.c.x), _wgslsmith_f_op_f32(global2.b.x - 1070f), _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c)), global2.d), Struct_2(false, false, global3.c, reverseBits(select(global3.d & global3.d, ~global3.d, select(arg_0, arg_0, global2.d.x)))));
    var var_2 = select(vec3<bool>(true, false, all(arg_0.xzy) != any(vec3<bool>(var_1.b, true, true))), arg_0.yyw, true);
    let var_3 = Struct_2(true, arg_1 != -16527i, -(var_1.c & func_4(var_1, Struct_1(arg_0.ww, global2.c.xxz, vec4<f32>(arg_2, -100f, 1922f, 709f), arg_0.yx), func_4(var_1, Struct_1(arg_0.xx, vec3<f32>(404f, 1573f, arg_2), vec4<f32>(arg_2, arg_2, global2.c.x, arg_2), vec2<bool>(true, var_2.x)), Struct_2(var_1.a, false, global3.c, vec4<u32>(u_input.a, global3.d.x, u_input.a, 96278u)))).c), var_1.d);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b.x + 1031f))) * _wgslsmith_f_op_f32(round(564f))), arg_2)), 356f, _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(min(global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1708f))))));
    return Struct_1(select(vec2<bool>(all(arg_0), true || any(vec2<bool>(false, false))), !select(!global2.a, global2.a, !var_2.xy), func_4(func_4(Struct_2(false, var_2.x, vec4<i32>(var_3.c.x, global0.x, -1i, -2147483647i), vec4<u32>(var_1.d.x, 2590u, u_input.a, 986u)), Struct_1(var_2.yy, global2.c.zyx, global2.c, global2.d), func_4(var_1, Struct_1(vec2<bool>(true, var_1.b), global2.b, global2.c, vec2<bool>(false, false)), Struct_2(true, global2.d.x, var_1.c, global3.d))), Struct_1(select(arg_0.wz, arg_0.yw, global2.a), _wgslsmith_f_op_vec3_f32(-global2.c.zyy), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, 156f, global2.c.x, 542f) + global2.c), select(vec2<bool>(false, false), var_2.zx, global2.d)), func_4(var_3, Struct_1(vec2<bool>(var_2.x, var_2.x), var_4.wwy, vec4<f32>(arg_2, 1125f, var_4.x, arg_2), vec2<bool>(var_2.x, var_3.a)), Struct_2(false, true, global3.c, global3.d))).b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, var_4.x, global2.b.x) - var_4.wzw) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(959f, global2.c.x, arg_2)))), var_4.xxx), _wgslsmith_f_op_vec4_f32(select(global2.c, _wgslsmith_f_op_vec4_f32(step(global2.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global2.c))))), false)), var_2.xx);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(select(!select(!vec4<bool>(false, global2.a.x, false, global2.d.x), !vec4<bool>(global2.a.x, true, global2.d.x, false), select(vec4<bool>(false, global2.d.x, global3.a, true), vec4<bool>(global2.a.x, global2.d.x, true, global2.a.x), vec4<bool>(global2.d.x, global3.b, global2.a.x, global3.a))), vec4<bool>(!(!global3.b), any(vec4<bool>(false, global3.a, true, true)) && true, global2.a.x, global2.d.x), !(!(false | global2.d.x))), global0.x, global2.c.x);
    var var_0 = ~0u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(abs(global2.c.x)), _wgslsmith_div_f32(-224f, global2.b.x))), global2.b)));
    var var_2 = var_1.xy;
    let var_3 = func_4(func_4(Struct_2(_wgslsmith_f_op_f32(-var_2.x) != _wgslsmith_f_op_f32(-global2.b.x), func_4(func_4(Struct_2(global2.a.x, global2.d.x, global3.c, global3.d), Struct_1(global2.a, vec3<f32>(var_1.x, var_2.x, 165f), global2.c, vec2<bool>(global2.a.x, global3.a)), Struct_2(true, true, global3.c, global3.d)), func_1(vec4<bool>(true, global3.a, false, global3.a), global0.x, global2.b.x), func_4(Struct_2(global2.a.x, global2.a.x, vec4<i32>(global0.x, global0.x, -36137i, global3.c.x), vec4<u32>(44823u, global3.d.x, 47477u, u_input.a)), Struct_1(vec2<bool>(true, global2.a.x), var_1, global2.c, vec2<bool>(false, true)), Struct_2(false, false, global3.c, vec4<u32>(0u, u_input.a, u_input.a, 1u)))).b, global3.c ^ -vec4<i32>(global0.x, global0.x, 27415i, global0.x), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.d.x, 40342u, global3.d.x, u_input.a), vec4<u32>(global3.d.x, 0u, 0u, global3.d.x)))), func_1(vec4<bool>(global3.a, true, global3.b, global3.a & global2.a.x), global0.x, 565f), func_4(Struct_2(true, global2.d.x, vec4<i32>(-2302i, 0i, global0.x, 13611i) >> (global3.d % vec4<u32>(32u)), ~vec4<u32>(1u, 11481u, u_input.a, u_input.a)), Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1778f, -2145f) * vec3<f32>(-540f, 955f, -2251f)), vec4<f32>(355f, -951f, -111f, 1251f), vec2<bool>(false, true)), func_4(Struct_2(global2.a.x, global2.a.x, vec4<i32>(24382i, -1i, -36187i, global0.x), global3.d), Struct_1(vec2<bool>(false, global3.b), var_1, global2.c, global2.d), func_4(Struct_2(global3.a, true, vec4<i32>(-1i, global3.c.x, global0.x, global3.c.x), vec4<u32>(4267u, 995u, u_input.a, 86500u)), Struct_1(global2.d, global2.c.yxw, vec4<f32>(-446f, 1031f, global2.b.x, var_2.x), vec2<bool>(global3.b, true)), Struct_2(true, global2.a.x, global3.c, vec4<u32>(global3.d.x, 6134u, u_input.a, 0u)))))), func_1(!(!vec4<bool>(global3.b, true, true, global2.d.x)), _wgslsmith_dot_vec2_i32(global3.c.wx >> (global3.d.yx % vec2<u32>(32u)), ~vec2<i32>(global3.c.x, 28191i) & global3.c.zz), _wgslsmith_f_op_f32(var_2.x + -507f)), func_4(Struct_2((u_input.a << (25031u % 32u)) != 1u, global2.d.x, reverseBits(abs(global3.c)), vec4<u32>(~15382u, u_input.a, firstLeadingBit(4294967295u), global3.d.x | 15832u)), func_1(select(vec4<bool>(true, false, true, global3.a), select(vec4<bool>(false, global2.a.x, global2.a.x, true), vec4<bool>(true, global3.b, global2.d.x, global3.b), true), !vec4<bool>(false, true, global3.a, true)), ~_wgslsmith_mod_i32(global3.c.x, 56009i), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(global2.b.x - -1017f))), func_4(Struct_2(false, true, vec4<i32>(global3.c.x, global0.x, -35657i, global3.c.x), global3.d), Struct_1(select(global2.a, vec2<bool>(global2.d.x, global2.d.x), vec2<bool>(global2.a.x, global3.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(431f, var_2.x, global2.c.x)), vec4<f32>(var_2.x, var_1.x, -1569f, var_2.x), global2.d), Struct_2(false, global3.b, vec4<i32>(global3.c.x, global3.c.x, 4269i, global3.c.x), vec4<u32>(0u, 28002u, 25289u, 38601u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -507f))), -2147483647i, ~var_3.d.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global2.c + vec4<f32>(-687f, var_2.x, _wgslsmith_f_op_f32(-1809f - var_2.x), _wgslsmith_f_op_f32(global2.c.x * global2.b.x))))));
}

