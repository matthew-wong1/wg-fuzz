struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: Struct_1 = Struct_1(1000f, vec3<i32>(i32(-2147483648), -1i, 15549i), vec4<f32>(1412f, 603f, -1388f, 359f), true, true);

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = ~(~(~global1.b ^ ~(-vec3<i32>(4862i, 20683i, 26356i))));
    var var_1 = Struct_4(select(!select(vec4<bool>(true, global1.d, global1.d, global1.d), !vec4<bool>(global1.d, false, global1.d, global1.e), global1.d | false), vec4<bool>(select(global1.e | global1.e, global1.e, global1.d & true), global1.e, global1.d, any(select(vec3<bool>(true, global1.e, true), vec3<bool>(global1.e, false, global1.e), global1.e))), true), ~_wgslsmith_mod_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(0u, 29630u, 44258u, 4294967295u))), reverseBits(reverseBits(vec4<u32>(7317u, 1u, 1u, 1695u)))), var_0.x);
    global2 = array<Struct_1, 6>();
    let var_2 = firstTrailingBit(-(~_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, 0i, 1i, global1.b.x), max(vec4<i32>(-29289i, -2147483647i, -1i, var_0.x), vec4<i32>(-23238i, 0i, -2147483647i, -2147483647i)))));
    let var_3 = var_1.b;
    return var_1.b.yxx;
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(1u), 6u)];
    var var_1 = ~42736u;
    global2 = array<Struct_1, 6>();
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(arg_0.x, arg_0.x >> (arg_0.x % 32u)) & ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0), abs(61437u)), abs(arg_0.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.x, arg_0.x, arg_0.x) << (vec3<u32>(arg_0.x, 1u, arg_0.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(select(arg_0.yxw, vec3<u32>(0u, arg_0.x, 49875u), false), func_3(2147483647i), min(vec3<u32>(arg_0.x, arg_0.x, 13028u), arg_0.yxx))), 24073u | arg_0.x), arg_0.x);
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(countOneBits(4294967295u & var_2.x), 6u)], true, -(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -23633i), vec4<i32>(global1.b.x, 26652i, 0i, 0i), vec4<i32>(u_input.a.x, -6107i, 6011i, -26898i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(global1.b.x, 15705i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) & vec4<i32>(~2147483647i, min(~7206i, _wgslsmith_clamp_i32(43270i, var_0.b.x, -1942i)), -abs(var_0.b.x), -5034i));
    return Struct_4(vec4<bool>(global1.e, !global1.d, !any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(global1.d, true, global1.d))), true), ~max(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(var_2, vec4<u32>(37933u, var_2.x, arg_0.x, 4294967295u)), arg_0), arg_0), abs(firstTrailingBit(_wgslsmith_dot_vec4_i32(var_3.c, ~vec4<i32>(10827i, 42282i, -4682i, -627i)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_4(!select(arg_2.a, !(!arg_2.a), !(false & arg_2.a.x)), vec4<u32>(~((arg_2.b.x >> (arg_3 % 32u)) | 4294967295u), _wgslsmith_mod_u32(~0u, select(arg_1.x, ~arg_3, global1.e)), func_3(19019i).x, select(arg_3, ~_wgslsmith_clamp_u32(4294967295u, arg_3, 54833u), true)), _wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), -(i32(-1i) * -47946i)));
    var var_1 = arg_2.b.x;
    global2 = array<Struct_1, 6>();
    global1 = Struct_1(_wgslsmith_f_op_f32(max(-804f, global1.c.x)), abs(~(vec3<i32>(-1i, -31507i, global1.b.x) & vec3<i32>(var_0.c, arg_2.c, -1i))) >> (arg_2.b.xwy % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(floor(-864f))), 326f, _wgslsmith_f_op_f32(trunc(-168f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a))))), !(select(!arg_2.a.x, select(global1.e, var_0.a.x, true), select(arg_2.a.x, global1.d, global1.e)) && global1.d), true);
    var_0 = arg_2;
    return global2[_wgslsmith_index_u32(0u, 6u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_3.b;
    var var_1 = Struct_4(!(!vec4<bool>(arg_3.d.a >= var_0.a.c.x, var_0.a.d, true, true)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) ^ ~vec4<u32>(~11299u, _wgslsmith_mod_u32(4294967295u, 27751u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 62159u), vec3<u32>(4294967295u, 1u, 1u)), 40521u), var_0.a.b.x & 0i);
    var var_2 = select(!vec4<bool>(func_2(abs(vec4<u32>(var_1.b.x, var_1.b.x, 4294967295u, 55358u))).a.x, func_4(_wgslsmith_clamp_vec3_i32(var_0.a.b, vec3<i32>(60892i, u_input.a.x, 0i), arg_3.b.a.b), var_1.b.wyw, Struct_4(vec4<bool>(arg_3.d.e, var_0.a.d, arg_0.e, false), vec4<u32>(0u, 18454u, var_1.b.x, 1u), var_1.c), var_1.b.x).d, var_0.b, true), select(select(select(vec4<bool>(true, arg_2.x, arg_3.b.b, false), var_1.a, vec4<bool>(false, false, true, true)), vec4<bool>(var_1.c < global1.b.x, any(vec4<bool>(arg_3.b.a.d, arg_1.x, false, var_0.b)), false, true), vec4<bool>(true, all(vec2<bool>(false, true)), func_4(arg_0.b, vec3<u32>(var_1.b.x, var_1.b.x, var_1.b.x), Struct_4(vec4<bool>(true, false, true, arg_1.x), var_1.b, var_0.c.x), 8798u).d, true)), var_1.a, vec4<bool>(false, true, true, (false && arg_2.x) || global1.e)), func_2(~vec4<u32>(0u, ~var_1.b.x, var_1.b.x, _wgslsmith_dot_vec3_u32(var_1.b.zwy, vec3<u32>(var_1.b.x, var_1.b.x, var_1.b.x)))).a);
    var var_3 = -1334f;
    return arg_3.b;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_1 * global1.c.wyy);
    var var_1 = arg_0;
    global2 = array<Struct_1, 6>();
    let var_2 = Struct_3(var_1.c << (var_1.b.x % 32u), func_5(func_4(firstLeadingBit(global1.b), ~arg_0.b.zyx, func_2(vec4<u32>(arg_0.b.x, 4294967295u, var_1.b.x, var_1.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(23733u, 1u, var_1.b.x), arg_0.b.yxw) | ~0u), var_1.a.ww, vec3<bool>(false, all(!arg_0.a), any(!vec3<bool>(arg_0.a.x, global1.e, global1.e))), Struct_3(~(-47616i) << ((4294967295u ^ var_1.b.x) % 32u), Struct_2(global2[_wgslsmith_index_u32(select(0u, var_1.b.x, true), 6u)], arg_0.c >= global1.b.x, select(vec4<i32>(0i, arg_0.c, 19531i, -17466i), vec4<i32>(-2147483647i, arg_0.c, u_input.a.x, 868i), false)), var_0.yy, func_4(vec3<i32>(-1i, var_1.c, u_input.a.x), ~vec3<u32>(18906u, 126320u, var_1.b.x), func_2(vec4<u32>(1u, var_1.b.x, arg_0.b.x, 0u)), 30518u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -592f) * vec2<f32>(1000f, 795f)) * arg_1.yx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(471f, arg_3) + global1.c.ww) - vec2<f32>(_wgslsmith_f_op_f32(561f - arg_2.x), _wgslsmith_f_op_f32(arg_3 + var_0.x)))), func_5(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x - arg_3))), max(global1.b, func_4(vec3<i32>(2147483647i, var_1.c, 1i), var_1.b.zyw, Struct_4(var_1.a, var_1.b, 1i), 8241u).b), global1.c, arg_0.b.x >= 45404u, !global1.e), select(select(var_1.a.yz, arg_0.a.zw, global1.e && true), !select(arg_0.a.zy, vec2<bool>(var_1.a.x, true), vec2<bool>(arg_0.a.x, global1.e)), true), select(!var_1.a.wxw, var_1.a.yyz, true), Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(-1i, -1009i)), Struct_2(Struct_1(arg_2.x, global1.b, global1.c, var_1.a.x, false), true, _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global1.b.x, 2147483647i, 8058i), vec4<i32>(43392i, 2147483647i, arg_0.c, 0i), vec4<i32>(-1i, u_input.a.x, -56031i, 41441i))), _wgslsmith_f_op_vec2_f32(-arg_2.zz), global2[_wgslsmith_index_u32(countOneBits(arg_0.b.x), 6u)])).a);
    var var_3 = vec4<bool>(!global1.e, func_2(~arg_0.b).a.x, true, !((_wgslsmith_div_u32(arg_0.b.x, 98040u) >= max(4294967295u, var_1.b.x)) & func_4(-var_2.b.c.zxy, vec3<u32>(1u, arg_0.b.x, var_1.b.x), arg_0, ~1u).e));
    return -54449i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(true | any(vec2<bool>(true, global1.d)), false));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, -762f) + 115f) * global1.a), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-570f))) < _wgslsmith_f_op_f32(global1.a * global1.a))), -global1.b, _wgslsmith_f_op_vec4_f32(ceil(global1.c)), true, global1.d);
    let var_2 = ~vec3<u32>(1u, ~25925u, 50930u);
    var var_3 = -select(~vec2<i32>(i32(-1i) * -2147483647i, var_1.b.x), global1.b.yy, select(!var_0, var_0, any(vec3<bool>(true, var_1.d, global1.d)) && true));
    var var_4 = Struct_4(vec4<bool>(var_1.e || var_1.d, all(select(vec4<bool>(var_1.d, var_1.e, var_1.e, false), vec4<bool>(global1.e, true, true, var_0.x), var_0.x)) | var_1.d, all(vec3<bool>(!var_0.x, var_0.x, true)), true && !global1.d), ~(~select(vec4<u32>(var_2.x, var_2.x, var_2.x, 1u) >> (vec4<u32>(4294967295u, 1u, 0u, var_2.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(0u, 4294967295u, 17224u, var_2.x)), true)), func_1(Struct_4(!vec4<bool>(true, global1.d, false, global1.d), ~(vec4<u32>(16599u, 0u, 18580u, var_2.x) | vec4<u32>(116783u, 18412u, var_2.x, var_2.x)), _wgslsmith_clamp_i32(u_input.a.x, -11861i, -15690i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 456f, global1.c.x)) + vec3<f32>(global1.c.x, global1.a, global1.a)) * _wgslsmith_f_op_vec3_f32(min(global1.c.xxw, vec3<f32>(var_1.a, global1.a, var_1.a)))), global1.c.xxw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f))));
    let var_5 = _wgslsmith_add_vec4_i32(abs(-select(vec4<i32>(2147483647i, var_3.x, 15386i, global1.b.x) | vec4<i32>(-2147483647i, u_input.a.x, global1.b.x, -2147483647i), vec4<i32>(2147483647i, var_1.b.x, var_4.c, 0i), true)), vec4<i32>(~(-2147483647i), 1i, _wgslsmith_div_i32(_wgslsmith_div_i32(max(-77017i, u_input.a.x), 1i), var_1.b.x), var_4.c));
    let var_6 = Struct_1(func_5(Struct_1(-1172f, ~(-vec3<i32>(-2860i, 54784i, 17308i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.c, global1.c, true)), _wgslsmith_f_op_vec4_f32(exp2(global1.c))), any(!vec3<bool>(var_1.d, global1.e, var_4.a.x)), all(vec3<bool>(true, var_1.d, true))), !select(select(vec2<bool>(true, false), var_4.a.yy, global1.d), vec2<bool>(global1.e, var_4.a.x), !var_0.x), var_4.a.ywx, Struct_3(-1i, Struct_2(func_4(var_5.xxz, vec3<u32>(var_2.x, var_2.x, 2368u), Struct_4(var_4.a, vec4<u32>(var_4.b.x, var_2.x, var_2.x, var_4.b.x), -83779i), 47414u), func_2(var_4.b).a.x, firstTrailingBit(vec4<i32>(var_1.b.x, -30483i, global1.b.x, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(1231f - global1.c.x), _wgslsmith_f_op_f32(sign(1000f))), global2[_wgslsmith_index_u32(var_2.x, 6u)])).a.c.x, ~min(vec3<i32>(-1i) * -vec3<i32>(var_1.b.x, -3398i, global1.b.x), select(~var_5.yxz, global1.b, var_1.e)), _wgslsmith_f_op_vec4_f32(-var_1.c), !var_1.e, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(abs(var_5), (min(var_5, var_5) | (vec4<i32>(-2147483647i, var_1.b.x, var_1.b.x, -55375i) & vec4<i32>(var_1.b.x, 47063i, 4981i, 3329i))) << (vec4<u32>(var_2.x, 4294967295u, _wgslsmith_add_u32(var_2.x, 4294967295u), var_2.x) % vec4<u32>(32u))));
}

