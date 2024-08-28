struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
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

var<private> global0: array<bool, 4> = array<bool, 4>(true, true, true, false);

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-783f, -1204f, 1874f, -851f), vec4<f32>(-548f, -914f, 2377f, -1000f), vec4<f32>(-471f, -261f, -724f, 802f), vec4<f32>(428f, 520f, 305f, 191f), vec4<f32>(129f, -444f, 1000f, 717f), vec4<f32>(-424f, 1085f, -635f, -1091f), vec4<f32>(-698f, -1351f, -1781f, 431f), vec4<f32>(-252f, 243f, 1000f, -1000f));

var<private> global2: array<bool, 18> = array<bool, 18>(false, true, false, false, false, true, false, false, false, true, false, true, false, true, true, false, true, false);

var<private> global3: i32;

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true, vec3<i32>(0i, 12092i, i32(-2147483648)), vec2<f32>(-748f, -606f), -1320f, vec4<i32>(27549i, -26135i, 15642i, -35129i)), Struct_1(false, vec3<i32>(45110i, i32(-2147483648), 2147483647i), vec2<f32>(821f, -1000f), 344f, vec4<i32>(-47713i, -45911i, 3083i, 2147483647i)), Struct_1(true, vec3<i32>(24483i, 1i, 22428i), vec2<f32>(262f, 339f), -1325f, vec4<i32>(i32(-2147483648), 29589i, 2147483647i, -8574i)), Struct_1(true, vec3<i32>(i32(-2147483648), 44318i, 25424i), vec2<f32>(1000f, -387f), -411f, vec4<i32>(2147483647i, 1i, -82221i, 0i)), Struct_1(true, vec3<i32>(21648i, 1i, i32(-2147483648)), vec2<f32>(-703f, -583f), 716f, vec4<i32>(2147483647i, i32(-2147483648), 0i, 0i)), Struct_1(false, vec3<i32>(-9685i, 123i, -1i), vec2<f32>(-231f, 1000f), 1011f, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -22554i)), Struct_1(true, vec3<i32>(15259i, 4198i, 0i), vec2<f32>(501f, 1000f), -1863f, vec4<i32>(8566i, -6346i, i32(-2147483648), -1i)), Struct_1(true, vec3<i32>(16498i, i32(-2147483648), 2147483647i), vec2<f32>(-1385f, 2128f), -1511f, vec4<i32>(41554i, -2999i, -1i, 15175i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    global4 = array<Struct_1, 8>();
    global2 = array<bool, 18>();
    var var_0 = arg_1.d;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1111f)))), arg_2.x) - arg_1.d);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_2.x) - _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-410f + 1f))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(111980u, 18u)], arg_0.e.xyz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1681f, _wgslsmith_f_op_f32(f32(-1f) * -819f))), arg_0.c.x, vec4<i32>(-u_input.b.x << (max(u_input.a.x, 4294967295u) % 32u), _wgslsmith_add_i32(firstLeadingBit(abs(1i)), _wgslsmith_mod_i32(0i, -25169i)), 1i, countOneBits(u_input.b.x)));
    var var_2 = (_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.b.x, 7670i), abs(-var_1.e.yx)) ^ var_0.b.xy) & vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_add_i32(arg_0.e.x, 0i)), abs(var_0.b.x)), abs(-(arg_0.b.x | 41548i)));
    var var_3 = global4[_wgslsmith_index_u32(0u, 8u)];
    let var_4 = arg_0;
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1085f + 526f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.d, var_3.c.x) * _wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(198f, var_0.d)))), _wgslsmith_f_op_vec2_f32(select(var_0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.c + var_0.c), vec2<f32>(165f, -347f)), !(!arg_1.xy))))));
}

fn func_2() -> Struct_1 {
    let var_0 = 2147483647i;
    let var_1 = global4[_wgslsmith_index_u32(~(~u_input.a.x), 8u)];
    var var_2 = Struct_1(!((-19110i << (select(u_input.a.x, u_input.a.x, true) % 32u)) > 0i), ~u_input.b.zxz, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1044f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, 1061f)))))), -324f, -u_input.b);
    var var_3 = Struct_1(!all(!vec2<bool>(false, global0[_wgslsmith_index_u32(15190u, 4u)])), var_1.e.xwx, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(func_3(false, Struct_1(false, var_1.b, vec2<f32>(-1082f, var_1.d), var_2.d, var_2.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, -3212f, -498f, 808f) + vec4<f32>(var_1.c.x, 1622f, var_1.c.x, 1000f))), countOneBits(vec3<i32>(-36879i, var_1.e.x, 56595i)) | vec3<i32>(var_1.b.x, 7571i, var_1.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c)), _wgslsmith_f_op_f32(-1000f * 2738f), ~var_1.e | -vec4<i32>(-9079i, 1i, 15573i, u_input.b.x)), vec3<bool>(var_2.a, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) - _wgslsmith_f_op_f32(f32(-1f) * -211f)), 1609f)), var_2.e);
    return global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~min(~u_input.a.x, ~4294967295u)), max(~_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), _wgslsmith_div_u32(90528u, 26969u)), ~(1u | select(~u_input.a.x, ~23780u, any(vec4<bool>(var_3.a, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], true, var_1.a))))), 8u)];
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = array<bool, 18>();
    let var_0 = _wgslsmith_f_op_f32(-1007f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)));
    let var_1 = u_input.b.x;
    var var_2 = func_2();
    global3 = _wgslsmith_sub_i32(-17507i, -26974i);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(1021f));
    var var_1 = func_1(false);
    var var_2 = Struct_1(any(!vec4<bool>(select(true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true), true, !global0[_wgslsmith_index_u32(1u, 4u)], false)), u_input.b.zzx, var_1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d), 715f)), var_1.c.x, !global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_clamp_vec4_i32(reverseBits(u_input.b) | u_input.b, vec4<i32>(var_1.e.x, 0i, select(u_input.b.x, 33135i, var_1.a), firstTrailingBit(u_input.b.x)), ~_wgslsmith_mult_vec4_i32(u_input.b, u_input.b)) & select(max(var_1.e, u_input.b) << (u_input.a % vec4<u32>(32u)), ~var_1.e & _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(1i, var_1.b.x, 20445i, var_1.e.x)), !any(vec3<bool>(global2[_wgslsmith_index_u32(69379u, 18u)], true, true))));
    global3 = ~(~var_1.b.x) ^ (-29428i & -select(_wgslsmith_sub_i32(var_2.b.x, -11888i), var_1.e.x, func_2().a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

