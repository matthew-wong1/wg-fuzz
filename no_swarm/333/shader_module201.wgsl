struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false);

var<private> global1: bool;

var<private> global2: bool = true;

var<private> global3: array<bool, 19>;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(any(!vec4<bool>(any(vec4<bool>(false, global0.a, global3[_wgslsmith_index_u32(4294967295u, 19u)], true)), !global3[_wgslsmith_index_u32(u_input.c.x, 19u)], u_input.c.x > 4294967295u, all(vec4<bool>(global3[_wgslsmith_index_u32(22029u, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)], global0.a, false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1018f, _wgslsmith_f_op_f32(937f * global4.x), var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -193f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-673f)), _wgslsmith_f_op_f32(global4.x + global4.x))), _wgslsmith_f_op_f32(-global4.x)))));
    global0 = var_0;
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(u_input.a.wy, vec2<i32>(u_input.a.x, u_input.d))) ^ ~(~vec2<i32>(u_input.a.x, u_input.a.x)), firstTrailingBit(abs(u_input.a.yx)) << (u_input.c.xx % vec2<u32>(32u))), u_input.a.x);
    var var_3 = select(~80093u, ~min(~0u, _wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(u_input.c.x, 40172u))), any(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(global0.a, var_0.a, global0.a)), !vec3<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 19u)]), select(vec3<bool>(global0.a, false, var_0.a), !vec3<bool>(false, global0.a, true), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 19u)], false)))));
    return ((var_2.x & 1i) >> (45565u % 32u)) & 33234i;
}

fn func_2() -> u32 {
    let var_0 = firstLeadingBit(func_3());
    let var_1 = !vec2<bool>(!(!global0.a), global4.x == _wgslsmith_f_op_f32(-global4.x));
    global4 = vec3<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(831f))))));
    var var_2 = Struct_1(vec2<f32>(607f, global4.x), u_input.c, 0u, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1438f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(sign(global4.x))))) + _wgslsmith_f_op_f32(sign(1000f))));
    var var_3 = _wgslsmith_div_vec3_i32(~firstTrailingBit(-reverseBits(vec3<i32>(-608i, var_0, 656i))), ~u_input.a.wxx);
    return ~u_input.b;
}

fn func_4(arg_0: u32) -> Struct_2 {
    return Struct_2(select(vec3<bool>(false, all(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], false, global0.a)), global0.a), !(!select(vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 19u)], global0.a, global0.a), vec3<bool>(false, true, global3[_wgslsmith_index_u32(arg_0, 19u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.c.x, 19u)]))), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1044f, -1962f, -700f, -1172f), vec4<f32>(1194f, -492f, -834f, 740f))))), true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2) -> Struct_4 {
    var var_0 = arg_0.b.x;
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(func_4(4294967295u).b.wyx)), vec3<f32>(global4.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global4.x, arg_2.b.x), -1770f), -375f)) * _wgslsmith_div_vec3_f32(arg_2.b.xzz, vec3<f32>(-1000f, -754f, _wgslsmith_f_op_f32(-516f * -368f))));
    global3 = array<bool, 19>();
    let var_1 = select(firstLeadingBit(u_input.c.zy) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(4294967295u, u_input.b)), _wgslsmith_sub_vec2_u32(u_input.c.xw, select(vec2<u32>(u_input.b, 1u), u_input.c.zx, true))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.c.zx, abs(_wgslsmith_sub_vec2_u32(u_input.c.zw, u_input.c.yw))) >> (~u_input.c.wy % vec2<u32>(32u)), global0.a);
    global4 = arg_0.b.xyz;
    return Struct_4(true);
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = func_5(func_4(func_2()), Struct_4(~(~4294967295u) < ~arg_0.c), func_4(arg_0.c));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-416f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.e))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f) - _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(126f))), func_4(~1u).b.x);
    global2 = false;
    global4 = var_1.yzw;
    global4 = var_1.xzy;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(270f)), 241f), var_1.x, var_1.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-570f, -1105f, 1000f) - vec3<f32>(1116f, 1318f, global4.x)), _wgslsmith_f_op_vec3_f32(var_1.yxw - var_1.zxz), !global0.a)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1843f, var_1.x, 1234f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.e, -334f, var_1.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.zxx))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.wzx * var_1.zyz), vec3<f32>(global4.x, -1020f, arg_0.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1036f * 808f), _wgslsmith_f_op_f32(exp2(global4.x)), _wgslsmith_div_f32(1000f, 1066f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global4.x, global4.x))), -491f, 199f)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2044f, 2186f, global4.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -2228f, global4.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) * vec3<f32>(global4.x, -1467f, global4.x)), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(global4.yz, vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x), u_input.c.x, -1i, -574f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 284f, -432f) + vec3<f32>(-732f, global4.x, -119f)))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-266f, _wgslsmith_div_f32(global4.x, -103f), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec2<f32>(-1000f, global4.x), u_input.c, 20628u, -15612i, global4.x))).x))))));
    var var_1 = Struct_3(u_input.a.x);
    let var_2 = ~min(-21994i, -firstTrailingBit(abs(-2147483647i)));
    global1 = false;
    var var_3 = select(u_input.a.zz, vec2<i32>(-1i) * -u_input.a.xw, func_4(0u).a.xy);
    var var_4 = 4294967295u;
    var_3 = firstTrailingBit(~_wgslsmith_mult_vec2_i32(~vec2<i32>(58197i, -2147483647i), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(0i, var_3.x)))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -891f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(~vec3<u32>(24471u, 26101u, u_input.c.x), vec3<u32>(u_input.b, 47924u, 35960u)) << (((~u_input.c.wzz >> (u_input.c.xww % vec3<u32>(32u))) | vec3<u32>(~u_input.b, 892u, u_input.c.x)) % vec3<u32>(32u)));
}

