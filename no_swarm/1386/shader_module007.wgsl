struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(4294967295u, 9412u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 46665u), vec2<u32>(72456u, 0u), vec2<u32>(61602u, 0u), vec2<u32>(1u, 1u), vec2<u32>(59869u, 33518u), vec2<u32>(100590u, 4294967295u), vec2<u32>(4294967295u, 3177u), vec2<u32>(0u, 0u), vec2<u32>(23874u, 4294967295u), vec2<u32>(4294967295u, 18756u), vec2<u32>(1u, 0u), vec2<u32>(1u, 45343u), vec2<u32>(4294967295u, 13542u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(13672u, 40747u), vec2<u32>(16688u, 146880u), vec2<u32>(3187u, 0u), vec2<u32>(33186u, 8096u), vec2<u32>(4294967295u, 47224u), vec2<u32>(2684u, 1u), vec2<u32>(10884u, 40302u), vec2<u32>(20559u, 0u), vec2<u32>(1u, 73883u), vec2<u32>(42574u, 1u), vec2<u32>(19771u, 0u), vec2<u32>(4294967295u, 33185u), vec2<u32>(1985u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u));

var<private> global1: u32 = 1491u;

var<private> global2: vec4<f32>;

var<private> global3: Struct_5 = Struct_5(vec4<f32>(-326f, 407f, 461f, 936f), vec4<i32>(1i, 56323i, -26781i, i32(-2147483648)), Struct_1(1u), Struct_4(Struct_1(3762u), true, true), true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec2<u32>) -> u32 {
    global3 = Struct_5(_wgslsmith_f_op_vec4_f32(ceil(global3.a)), countOneBits(select(firstTrailingBit(global3.b), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-23650i, global3.b.x, u_input.c.x, -2147483647i), global3.b, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, arg_0.x, -2268i, arg_0.x), global3.b)), vec4<bool>(global3.e & global3.e, false != global3.e, any(arg_1.c), all(vec3<bool>(false, global3.e, global3.e))))), global3.c, Struct_4(Struct_1(arg_3.x), all(vec2<bool>(true, arg_1.c.x)), false), any(!(!arg_1.c.xw)));
    let var_0 = global3.d.a;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1268f * 1775f) * _wgslsmith_div_f32(global2.x, 450f))))), global2.x, _wgslsmith_f_op_f32(max(arg_1.d, global3.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a.x))));
    let var_2 = u_input.a.wxy;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1769f), _wgslsmith_f_op_f32(sign(2072f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -104f))), _wgslsmith_f_op_f32(trunc(var_1.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-817f, 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-374f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), 2153f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1, vec4<f32>(1000f, 1132f, arg_1.a, -1087f), global3.e))) * vec4<f32>(_wgslsmith_div_f32(1000f, 1963f), -2632f, global3.a.x, _wgslsmith_f_op_f32(-var_1.x)))));
    return 4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = all(arg_2.wx);
    let var_1 = global3.c;
    var var_2 = ~(~(~u_input.d.x));
    global1 = ~(~(~abs(func_3(vec2<i32>(62710i, global3.b.x), Struct_2(-371f, -3450i, arg_2, global3.a.x, u_input.d.yx), vec2<u32>(1u, global3.d.a.a), u_input.d.yy))));
    let var_3 = u_input.a.x;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1226f) + 108f), _wgslsmith_add_i32(0i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-arg_1.zx, arg_1.yx), max(global3.b.x, global3.b.x))), select(vec4<bool>(any(arg_2) & !arg_2.x, global2.x != global3.a.x, all(select(vec3<bool>(global3.d.c, arg_2.x, true), arg_2.wyy, false)), true | arg_2.x), select(arg_2, !vec4<bool>(false, global3.e, false, true), any(arg_2)), arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), 129f), max(reverseBits(u_input.a.yz), vec2<u32>(_wgslsmith_mod_u32(var_1.a, var_3), var_1.a >> (global3.d.a.a % 32u)) & abs(u_input.d.zy)));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -u_input.c.x;
    var var_1 = ~_wgslsmith_mult_vec2_u32(select(firstTrailingBit(~global0[_wgslsmith_index_u32(4294967295u, 32u)]), u_input.a.yy, arg_0.c.c.wz), max(vec2<u32>(global3.d.a.a, global3.d.a.a), max(vec2<u32>(arg_2.a, arg_2.a), vec2<u32>(0u, arg_2.a))) << (vec2<u32>(~global3.c.a, 55400u) % vec2<u32>(32u)));
    var var_2 = all(arg_0.c.c.yx);
    let var_3 = Struct_1(~global3.c.a);
    global0 = array<vec2<u32>, 32>();
    return Struct_1(abs(var_3.a) >> (4294967295u % 32u));
}

fn func_1(arg_0: Struct_4) -> bool {
    var var_0 = ~countOneBits(u_input.a.x | u_input.a.x);
    var var_1 = func_4(Struct_3(u_input.a, _wgslsmith_f_op_vec2_f32(min(global3.a.wz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.zz) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, 689f) * global3.a.yx)))), func_2(vec2<i32>(global3.b.x, abs(0i)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), vec3<i32>(u_input.c.x, global3.b.x, global3.b.x)), vec4<bool>(all(vec2<bool>(true, global3.d.c)), true, false, !global3.d.c)), global3.a.x, vec2<i32>(-2147483647i, global3.b.x >> (0u % 32u)) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 5945u), global0[_wgslsmith_index_u32(1u, 32u)]), 0u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(select(global3.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1157f)) + global3.a.x))), select(select(false, global3.e, true), _wgslsmith_div_f32(global2.x, global3.a.x) > -1666f, all(vec4<bool>(global3.d.c, true, global3.e, true))))), arg_0.a);
    let var_2 = vec2<i32>(u_input.c.x, u_input.c.x) | _wgslsmith_mod_vec2_i32(vec2<i32>(abs(_wgslsmith_sub_i32(1i, -22121i)), u_input.c.x), vec2<i32>(2147483647i, 1i >> (~global3.c.a % 32u)));
    global1 = ~0u;
    var var_3 = !(!select(!func_2(vec2<i32>(global3.b.x, var_2.x), u_input.c, vec4<bool>(false, false, global3.e, true)).c, select(!vec4<bool>(global3.d.c, global3.e, true, true), vec4<bool>(arg_0.c, false, global3.e, global3.e), any(vec2<bool>(arg_0.c, arg_0.b))), arg_0.c));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global3.a.x, u_input.c.x, !select(vec4<bool>(global3.d.b, false, global3.d.b, !global3.e), vec4<bool>(global3.d.b && false, func_1(Struct_4(global3.c, global3.d.b, global3.e)), global3.e, global3.d.b), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, global3.a.x)))) * _wgslsmith_div_f32(145f, 1f)), _wgslsmith_f_op_f32(f32(-1f) * -812f), select(true, (global3.b.x >> (56117u % 32u)) == global3.b.x, any(select(vec4<bool>(global3.d.b, global3.e, global3.e, global3.d.c), vec4<bool>(global3.d.c, true, false, true), false))))), select(u_input.a.zx, vec2<u32>(~global3.d.a.a, 26612u), select(vec2<bool>(true, true), !vec2<bool>(global3.d.b, true), global3.c.a <= 0u)));
    var var_1 = -(~abs(_wgslsmith_div_i32(var_0.b, -var_0.b)));
    var var_2 = func_2(vec2<i32>(_wgslsmith_mod_i32(-2951i | global3.b.x, 1i), u_input.c.x), global3.b.wwz, select(select(vec4<bool>(false, true, false, global3.e), select(vec4<bool>(false, global3.e, global3.e, var_0.c.x), var_0.c, vec4<bool>(var_0.c.x, global3.d.b, var_0.c.x, true)), select(var_0.c, var_0.c, var_0.c)), !var_0.c, true)).c.x && true;
    global1 = ~u_input.a.x;
    let var_3 = -24108i;
    var var_4 = Struct_3(_wgslsmith_clamp_vec4_u32((abs(vec4<u32>(48227u, var_0.e.x, 1u, 4294967295u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(global3.c.a, u_input.b, var_0.e.x, 0u), vec4<u32>(u_input.b, 4294967295u, 2161u, global3.c.a))) ^ vec4<u32>(abs(4294967295u), 17484u, ~3205u, u_input.a.x), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(~7221u, 1u), 57570u, global3.c.a), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a >> (vec4<u32>(var_0.e.x, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<u32>(var_0.e.x, 1u, 16735u, 0u)), ~_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(global2.xz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 871f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, global3.a.x))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), ~select(firstTrailingBit(-26503i), var_3 >> (var_0.e.x % 32u), true), vec4<bool>(!(var_0.c.x && false), func_2(vec2<i32>(global3.b.x, global3.b.x), vec3<i32>(var_3, u_input.c.x, var_3), select(var_0.c, vec4<bool>(global3.e, false, global3.e, global3.e), var_0.c)).c.x, (-17525i << (global3.c.a % 32u)) == min(global3.b.x, 1i), global3.d.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1110f)))), vec2<u32>(~1u ^ var_0.e.x, _wgslsmith_clamp_u32(4294967295u, 0u, var_0.e.x) ^ _wgslsmith_clamp_u32(global3.d.a.a, var_0.e.x, 42715u))), _wgslsmith_f_op_f32(f32(-1f) * -521f), ~vec2<i32>(var_3, abs(_wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(1i, var_0.b)))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1036f))), -995f));
    var var_6 = _wgslsmith_f_op_vec3_f32(-global2.xyx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(982f)))), -1237f, 419f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(296f, var_0.a)))));
}

