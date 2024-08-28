struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: array<bool, 28>;

var<private> global3: array<u32, 31> = array<u32, 31>(39214u, 0u, 0u, 62416u, 5897u, 0u, 66949u, 4294967295u, 0u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 1u, 107099u, 65976u, 1u, 26785u, 18077u, 28852u, 70486u, 4294967295u, 4294967295u, 4294967295u, 43245u, 83094u, 44267u, 1u, 1u, 7889u, 9841u);

var<private> global4: f32 = -596f;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: i32) -> i32 {
    let var_0 = Struct_3(vec3<bool>(any(vec3<bool>(true, true, true)), !all(vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 28u)], false)) | global2[_wgslsmith_index_u32(~58852u, 28u)], all(vec3<bool>(false, !global2[_wgslsmith_index_u32(5985u, 28u)], false))), global0.zz, abs(~u_input.c));
    global2 = array<bool, 28>();
    let var_1 = all(vec3<bool>(all(select(global1[_wgslsmith_index_u32(42380u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3841u, 31u)], 31u)] % 32u), 12u)], !var_0.a.zz, select(vec2<bool>(var_0.a.x, global2[_wgslsmith_index_u32(1u, 28u)]), var_0.a.xx, vec2<bool>(var_0.a.x, var_0.a.x)))), global2[_wgslsmith_index_u32(min(global0.x | abs(0u), global3[_wgslsmith_index_u32(64348u, 31u)]), 28u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1789u, 0u, 0u), vec4<u32>(var_0.c.x, global0.x, 58340u, var_0.c.x))), 28u)]));
    let var_2 = u_input.b.x;
    let var_3 = Struct_4(var_0, Struct_2(arg_1, -345f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), vec2<bool>(!(!var_0.a.x), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -287f, _wgslsmith_f_op_f32(f32(-1f) * -702f))), arg_1.x), Struct_2(arg_1, var_0.a.x, select(!global1[_wgslsmith_index_u32(min(u_input.b.x, global3[_wgslsmith_index_u32(var_0.c.x, 31u)]), 12u)], vec2<bool>(true, true), any(!vec4<bool>(global2[_wgslsmith_index_u32(var_2, 28u)], global2[_wgslsmith_index_u32(27364u, 28u)], false, false))), _wgslsmith_div_vec3_f32(arg_1.yyx, _wgslsmith_f_op_vec3_f32(step(arg_1.zwy, arg_1.zxw))), _wgslsmith_f_op_f32(-arg_1.x)), !(!(!select(vec4<bool>(var_1, var_1, global2[_wgslsmith_index_u32(u_input.c.x, 28u)], var_1), vec4<bool>(true, true, var_1, var_0.a.x), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 28u)], var_0.a.x, var_0.a.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(106f, 1167f, arg_1.x, 814f) + _wgslsmith_f_op_vec4_f32(-arg_1)))), !(!(!global2[_wgslsmith_index_u32(u_input.c.x, 28u)])), vec2<bool>(any(!vec4<bool>(true, true, true, var_0.a.x)), var_1), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), -1261f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))), 163f))));
    return i32(-1i) * -1i;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, ~(i32(-1i) * -21780i), -1i), vec4<i32>(min(-34067i, max(27780i, 2147483647i)) | func_3(abs(1i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1314f, 1588f, -808f, 358f))), -12993i), countOneBits(_wgslsmith_clamp_i32(1i, ~(-1i), i32(-1i) * -4852i)), -1i, 2147483647i));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_mod_i32(-9791i, var_0);
    let var_3 = !vec4<bool>(false & any(arg_1), true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e - 1442f)) == _wgslsmith_f_op_f32(-var_1.a.x));
    global1 = array<vec2<bool>, 12>();
    return _wgslsmith_f_op_f32(-var_1.d.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = !global1[_wgslsmith_index_u32(~37220u, 12u)];
    let var_1 = vec4<bool>(all(select(vec2<bool>(arg_1.b.x | true, true || global2[_wgslsmith_index_u32(arg_1.c.x, 28u)]), select(!arg_1.b, arg_1.b, global1[_wgslsmith_index_u32(~global0.x, 12u)]), select(select(global1[_wgslsmith_index_u32(arg_1.c.x, 12u)], vec2<bool>(global2[_wgslsmith_index_u32(arg_1.c.x, 28u)], false), var_0), vec2<bool>(true, true), var_0))), false, true, global2[_wgslsmith_index_u32(max(~abs(_wgslsmith_clamp_u32(0u, 48386u, 23765u)), firstTrailingBit(4294967295u)), 28u)]);
    let var_2 = Struct_4(Struct_3(vec3<bool>(var_0.x | var_0.x, all(!var_1), true), u_input.c.zz, u_input.c), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(146f, arg_0.x, 203f, -1426f), vec4<f32>(arg_0.x, -1937f, 1391f, -1000f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -922f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-243f, 803f, 509f, arg_0.x)), global2[_wgslsmith_index_u32(u_input.b.x, 28u)]))), arg_0.x != _wgslsmith_f_op_f32(floor(3044f)), vec2<bool>(true, true), vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0.x, -273f, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f - arg_0.x))), Struct_2(vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - _wgslsmith_f_op_f32(floor(-535f))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-198f - arg_0.x))), any(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 28u)], var_0.x, global2[_wgslsmith_index_u32(39418u, 28u)], true), select(var_1, var_1, vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(var_1, vec4<bool>(global2[_wgslsmith_index_u32(74840u, 28u)], global2[_wgslsmith_index_u32(28158u, 28u)], arg_1.b.x, true), var_1))), select(vec2<bool>(true, arg_1.b.x), var_0, var_1.ww), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -909f, arg_0.x) + arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -558f)), vec4<bool>(_wgslsmith_mod_i32(arg_1.a.x, 1i) >= arg_1.a.x, arg_0.x < -996f, arg_0.x != _wgslsmith_f_op_f32(-arg_0.x), var_0.x), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 758f, 1056f, arg_0.x)))), all(select(vec4<bool>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(4294967295u, 28u)], var_1.x), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 28u)], var_1.x, false, false), vec4<bool>(var_0.x, true, global2[_wgslsmith_index_u32(1u, 28u)], true))), vec2<bool>(true, false), arg_0, arg_0.x));
    let var_3 = _wgslsmith_mod_i32(firstLeadingBit(i32(-1i) * -_wgslsmith_div_i32(-8312i, arg_1.a.x)), ~((i32(-1i) * -arg_1.a.x) & min(firstTrailingBit(arg_1.a.x), firstLeadingBit(arg_1.a.x))));
    var var_4 = vec2<i32>(-1i) * -vec2<i32>(arg_1.a.x, 27479i);
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_2.c.a))) * _wgslsmith_f_op_vec4_f32(select(var_2.c.a, _wgslsmith_f_op_vec4_f32(-var_2.e.a), var_2.d))))), true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(40474u, _wgslsmith_clamp_u32(arg_1.c.x, min(countOneBits(58245u), var_2.a.c.x), u_input.d)), 12u)], _wgslsmith_div_vec3_f32(arg_0, arg_0), 150f);
}

fn func_1() -> Struct_4 {
    let var_0 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, abs(u_input.c)), u_input.d, abs(~4294967295u));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-226f)), _wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(-464f, -267f, 1155f, -868f), false, global1[_wgslsmith_index_u32(25887u, 12u)], vec3<f32>(858f, 673f, 382f), 2243f), vec4<bool>(global2[_wgslsmith_index_u32(28504u, 28u)], global2[_wgslsmith_index_u32(56142u, 28u)], global2[_wgslsmith_index_u32(u_input.c.x, 28u)], global2[_wgslsmith_index_u32(global0.x, 28u)]))), false))))), Struct_1(vec2<i32>(~(~1i), _wgslsmith_mod_i32(~(-22409i), _wgslsmith_sub_i32(27769i, -1i))), !select(!global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 31u)], 12u)], !vec2<bool>(false, global2[_wgslsmith_index_u32(31529u, 28u)]), select(global1[_wgslsmith_index_u32(var_0.x, 12u)], global1[_wgslsmith_index_u32(var_0.x, 12u)], vec2<bool>(true, true))), select(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, global3[_wgslsmith_index_u32(66152u, 31u)]), vec2<u32>(u_input.c.x, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, global0.x), var_0.zx), u_input.c.wx), max(vec2<u32>(1u, u_input.b.x), var_0.yx), vec2<bool>(true, global2[_wgslsmith_index_u32(7193u, 28u)]))));
    let var_2 = Struct_4(Struct_3(select(vec3<bool>(var_1.b, !var_1.b, -601f <= var_1.a.x), !select(vec3<bool>(true, var_1.c.x, var_1.c.x), vec3<bool>(true, false, var_1.b), vec3<bool>(true, true, true)), true), vec2<u32>(_wgslsmith_div_u32(~8363u, global3[_wgslsmith_index_u32(~global0.x, 31u)]), _wgslsmith_mod_u32(~global3[_wgslsmith_index_u32(55275u, 31u)], 1u)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(max(u_input.c, vec4<u32>(global0.x, global0.x, 0u, 1u)), ~u_input.c), vec4<u32>(u_input.d, ~var_0.x, 0u, ~global3[_wgslsmith_index_u32(1u, 31u)]))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-var_1.e), var_1.d.x, var_1.e, -597f), true, select(select(vec2<bool>(var_1.c.x, false), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, 23648u), 12u)], any(vec4<bool>(var_1.b, global2[_wgslsmith_index_u32(u_input.d, 28u)], false, var_1.b))), !(!var_1.c), false), var_1.d, _wgslsmith_f_op_f32(-485f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d.x), -556f)))), var_1, vec4<bool>(select(true, var_1.b, false), true, true, all(global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.d.x)), _wgslsmith_f_op_f32(max(1448f, var_1.d.x)), var_1.e, _wgslsmith_f_op_f32(var_1.d.x - -729f)))), global2[_wgslsmith_index_u32(~88711u, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)], vec3<f32>(-771f, func_4(_wgslsmith_f_op_vec3_f32(-var_1.a.yyw), Struct_1(vec2<i32>(1i, -2906i), global1[_wgslsmith_index_u32(var_0.x, 12u)], vec2<u32>(u_input.c.x, 0u))).e, -883f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(834f, _wgslsmith_f_op_f32(select(1193f, -317f, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1847f)))));
    global1 = array<vec2<bool>, 12>();
    global2 = array<bool, 28>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-15605i, 56269i, 25324i, -27953i), abs(vec4<i32>(-11203i, -24880i, -7499i, 1i))) << (u_input.c % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(vec4<i32>(19531i, -22866i, 26654i, 0i) >> (vec4<u32>(u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15997u, 31u)], 31u)], 31u)], 51111u, 33773u) % vec4<u32>(32u)), ~vec4<i32>(1i, 0i, 1i, -18717i))) << (_wgslsmith_sub_u32(0u, abs(reverseBits(reverseBits(global0.x)))) % 32u);
    let var_1 = _wgslsmith_f_op_f32(-530f + 768f);
    global2 = array<bool, 28>();
    global1 = array<vec2<bool>, 12>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -583f))), _wgslsmith_f_op_f32(trunc(-124f)), var_1));
    let var_3 = func_1();
    var var_4 = var_0 == var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(var_3.a.c, select(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], 30546u, global0.x, 0u) & vec4<u32>(global3[_wgslsmith_index_u32(var_3.a.c.x, 31u)], u_input.c.x, global3[_wgslsmith_index_u32(1u, 31u)], 0u), ~var_3.a.c, var_3.d) << (var_3.a.c % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_3.b.a.zzw))), Struct_1(vec2<i32>(1i, var_0), global1[_wgslsmith_index_u32(~0u, 12u)], vec2<u32>(global0.x, 4294967295u))).d.zy + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.c.a.zz)), var_2.zy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(func_1().e, var_3.d)) + var_2.x), global3[_wgslsmith_index_u32(18288u, 31u)], vec4<u32>(global0.x, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, var_3.a.c.x), 4294967295u)), reverseBits(_wgslsmith_dot_vec4_u32(~var_3.a.c, u_input.c)), global3[_wgslsmith_index_u32(~var_3.a.c.x << (1u % 32u), 31u)]));
}

