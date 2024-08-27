struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4;

var<private> global2: Struct_4;

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), Struct_1(vec2<i32>(6380i, -9684i), vec2<f32>(1086f, 1905f), vec4<i32>(39238i, 0i, -15236i, 43719i), vec2<bool>(false, true), vec2<i32>(19844i, -6925i))), Struct_2(vec4<u32>(3026u, 4294967295u, 1u, 4294967295u), Struct_1(vec2<i32>(-20227i, -10344i), vec2<f32>(-1000f, -1000f), vec4<i32>(-29456i, i32(-2147483648), 0i, -18999i), vec2<bool>(false, true), vec2<i32>(7313i, 29854i))), Struct_2(vec4<u32>(0u, 1u, 41388u, 0u), Struct_1(vec2<i32>(-29702i, 14079i), vec2<f32>(-281f, -871f), vec4<i32>(-18942i, 19393i, 1i, -36383i), vec2<bool>(false, true), vec2<i32>(-69633i, 19255i))), Struct_2(vec4<u32>(4294967295u, 37420u, 7800u, 0u), Struct_1(vec2<i32>(2147483647i, -1i), vec2<f32>(167f, 430f), vec4<i32>(0i, i32(-2147483648), -34541i, -32826i), vec2<bool>(true, false), vec2<i32>(22331i, 28381i))), Struct_2(vec4<u32>(1u, 1894u, 62876u, 523u), Struct_1(vec2<i32>(3309i, -41777i), vec2<f32>(-503f, 729f), vec4<i32>(-12721i, 33870i, 2637i, 2147483647i), vec2<bool>(false, false), vec2<i32>(1i, 2147483647i))), Struct_2(vec4<u32>(43412u, 24212u, 50011u, 1u), Struct_1(vec2<i32>(-14678i, -8360i), vec2<f32>(325f, 632f), vec4<i32>(-12668i, -21344i, -1i, -26340i), vec2<bool>(true, false), vec2<i32>(2147483647i, 2147483647i))), Struct_2(vec4<u32>(557u, 1u, 1u, 0u), Struct_1(vec2<i32>(0i, -19929i), vec2<f32>(1000f, 838f), vec4<i32>(0i, 2147483647i, i32(-2147483648), 2147483647i), vec2<bool>(true, false), vec2<i32>(-1i, -1693i))), Struct_2(vec4<u32>(52826u, 19892u, 31638u, 0u), Struct_1(vec2<i32>(-49043i, -1i), vec2<f32>(959f, -675f), vec4<i32>(i32(-2147483648), 2147483647i, -19780i, -24729i), vec2<bool>(false, true), vec2<i32>(-30321i, 31048i))), Struct_2(vec4<u32>(40473u, 0u, 0u, 1u), Struct_1(vec2<i32>(3684i, -1i), vec2<f32>(1427f, 1010f), vec4<i32>(-57339i, 109476i, i32(-2147483648), 1i), vec2<bool>(false, false), vec2<i32>(2147483647i, -20975i))), Struct_2(vec4<u32>(0u, 3939u, 1u, 0u), Struct_1(vec2<i32>(-7820i, 1i), vec2<f32>(659f, -1458f), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 17529i), vec2<bool>(true, false), vec2<i32>(-33408i, 1i))), Struct_2(vec4<u32>(4294967295u, 0u, 15339u, 82444u), Struct_1(vec2<i32>(1i, -49035i), vec2<f32>(-543f, -2363f), vec4<i32>(1i, 42547i, -1i, 36226i), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -6800i))), Struct_2(vec4<u32>(4294967295u, 0u, 25087u, 4294967295u), Struct_1(vec2<i32>(2147483647i, -61484i), vec2<f32>(-230f, 366f), vec4<i32>(-1i, 24347i, 7021i, 2147483647i), vec2<bool>(true, true), vec2<i32>(-4018i, 22801i))));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = global2.b.b.e.x;
    let var_1 = global1.b;
    let var_2 = Struct_1(vec2<i32>(abs(2147483647i), var_1.b.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1179f, global2.b.b.b.x)))) * global2.b.b.b)), global2.b.b.c, vec2<bool>(true, -_wgslsmith_sub_i32(-26762i, global1.b.b.c.x) > u_input.a), abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -33366i), vec2<i32>(0i, global2.b.b.c.x)), vec2<i32>(var_1.b.a.x, var_1.b.e.x), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2494i), vec2<i32>(39302i, u_input.a) << (vec2<u32>(var_1.a.x, 30374u) % vec2<u32>(32u))))));
    let var_3 = Struct_3(var_2.b.x, !global0.b);
    var var_4 = _wgslsmith_f_op_vec3_f32(-global2.a);
    return -571f;
}

fn func_2() -> Struct_1 {
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-1826f + _wgslsmith_f_op_f32(411f - global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1246f))), global2.b.b.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.a, global1.a)))))), Struct_2(~max(~vec4<u32>(11859u, global2.b.a.x, 1u, 43160u), global2.b.a), global1.b.b), vec3<bool>(global1.c.x, global0.b.x, false));
    global3 = array<Struct_2, 12>();
    global1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(323f, global0.a, global1.b.b.d.x)))), global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b.b.b.x)))), _wgslsmith_f_op_f32(global0.a * _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(global0.a - global0.a)))), global2.b, vec3<bool>(true, global0.b.x, all(!select(vec2<bool>(global0.b.x, global1.b.b.d.x), vec2<bool>(false, global1.c.x), global1.c.x))));
    var var_0 = Struct_2(vec4<u32>(abs(~105412u ^ _wgslsmith_mod_u32(u_input.d, 4294967295u)), select(~(global2.b.a.x & global1.b.a.x), _wgslsmith_mult_u32(1u, ~28417u), any(select(vec4<bool>(global2.c.x, false, global0.b.x, global0.b.x), vec4<bool>(global1.c.x, false, global0.b.x, false), true))), global1.b.a.x, u_input.d >> (~u_input.d % 32u)), Struct_1(global2.b.b.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.a)), _wgslsmith_f_op_f32(global2.a.x - 459f))), global2.b.b.c, select(vec2<bool>(global1.c.x || false, false), vec2<bool>(true, global2.b.b.d.x), global1.b.b.d.x), ~_wgslsmith_sub_vec2_i32(-global1.b.b.a, vec2<i32>(-37181i, -72801i))));
    var_0 = Struct_2(abs(~firstTrailingBit(vec4<u32>(0u, var_0.a.x, global2.b.a.x, 0u))), Struct_1(select(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.b.b.e.x, -5404i), vec2<i32>(global1.b.b.e.x, global1.b.b.a.x)) & firstLeadingBit(vec2<i32>(global1.b.b.e.x, 16573i)), var_0.b.e, !(!global0.b)), vec2<f32>(1892f, _wgslsmith_f_op_f32(select(var_0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -855f), true))), global2.b.b.c, !(!global2.b.b.d), global1.b.b.c.yw));
    return var_0.b;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(global2.a)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d << (abs(4294967295u) % 32u), u_input.d), global1.b.a.wz), 12u)], global1.c);
    global2 = var_0;
    global1 = var_0;
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(global1.a, _wgslsmith_f_op_vec3_f32(floor(global2.a))))), global2.b, !global2.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a.zx, vec2<f32>(_wgslsmith_div_f32(arg_0.b.x, global1.a.x), _wgslsmith_f_op_f32(trunc(2080f)))) * var_0.a.zy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.b.b.x, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_0.b.b.b.x))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = any(!vec3<bool>(false, global2.c.x, true));
    global3 = array<Struct_2, 12>();
    var_0 = _wgslsmith_div_f32(-1000f, -1059f) == _wgslsmith_f_op_f32(func_4(func_2()));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(select(global2.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2.a - _wgslsmith_f_op_vec3_f32(global2.a - global1.a)), vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.a)), global0.a, global1.b.b.b.x), select(vec3<bool>(global2.b.b.d.x, false, false), vec3<bool>(global0.b.x, global1.c.x, false), false))), false)), global2.b, global1.c);
    let var_2 = vec4<bool>(select(firstLeadingBit(abs(global1.b.a.x)) < 70926u, true, _wgslsmith_f_op_f32(-247f + _wgslsmith_f_op_f32(round(640f))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.a, 2113f))))), any(vec2<bool>(any(!vec3<bool>(var_1.b.b.d.x, var_1.c.x, true)), false)), !global2.b.b.d.x, !(!arg_1.b.d.x));
    return _wgslsmith_add_u32(firstLeadingBit(abs(15244u) & max(_wgslsmith_mult_u32(global1.b.a.x, 19432u), u_input.d)), ~_wgslsmith_dot_vec4_u32(global2.b.a, (vec4<u32>(global1.b.a.x, 4294967295u, 31568u, arg_1.a.x) & vec4<u32>(arg_1.a.x, global1.b.a.x, var_1.b.a.x, arg_1.a.x)) | vec4<u32>(var_1.b.a.x, global1.b.a.x, arg_1.a.x, 113u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.b.b;
    var var_1 = vec4<bool>(false, _wgslsmith_add_u32(_wgslsmith_add_u32(global1.b.a.x, global2.b.a.x) >> ((4294967295u << (u_input.d % 32u)) % 32u), 63137u) != ~_wgslsmith_div_u32(~1u, ~0u), any(global2.b.b.d), false);
    var var_2 = global2.a.zx;
    let var_3 = 2147483647i;
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, var_2.x, -660f, global0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 1000f, var_2.x, 1000f) * vec4<f32>(var_0.x, global0.a, -171f, -1280f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(660f, global1.b.b.b.x, 2345f, global1.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -277f, var_0.x, var_0.x))))));
    let var_5 = global1.b.a.x;
    let var_6 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~4294967295u, u_input.d, abs(max(u_input.d, 18755u))) << (~_wgslsmith_clamp_u32(~u_input.d, 0u, global2.b.a.x) % 32u), _wgslsmith_dot_vec4_u32(global2.b.a, vec4<u32>(min(~global2.b.a.x, 1u), func_1(Struct_3(var_2.x, vec2<bool>(global1.c.x, false)), global1.b) & firstTrailingBit(0u), ~_wgslsmith_sub_u32(u_input.d, 4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.d, 1u), vec3<u32>(global2.b.a.x, global2.b.a.x, u_input.d)))));
    var var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.c, -1i, var_3, 1i)), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(global2.b.b.e.x, 10371i, global1.b.b.a.x, 2147483647i)), abs(vec4<i32>(global1.b.b.a.x, var_3, -1i, 11180i)))), var_7.a.x, var_3, u_input.a), _wgslsmith_f_op_vec2_f32(var_4.zy * global2.b.b.b), global2.b.a.x, var_7.c.x, var_6);
}

