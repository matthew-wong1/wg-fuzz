struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: array<vec4<u32>, 9>;

var<private> global2: Struct_2;

var<private> global3: vec2<u32>;

var<private> global4: array<f32, 29> = array<f32, 29>(-1631f, -946f, 152f, -1232f, -1096f, 497f, 331f, -1054f, 1114f, -480f, -123f, 933f, 489f, 1282f, 657f, -713f, -2121f, 731f, 304f, -498f, 257f, 1474f, -903f, -2134f, -1423f, -730f, 288f, -1320f, -620f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(1578f));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, -1i, -6775i, u_input.b)), -(~vec4<i32>(2147483647i, -19041i, global2.c.d.x, -75770i))), _wgslsmith_div_i32(-2147483647i << (~global3.x % 32u), _wgslsmith_mod_i32(~global2.c.d.x, 11471i))) ^ u_input.b;
    var var_2 = Struct_2(global2.a, select(global2.b, select(global2.b, global2.b, !(!global2.b)), u_input.c >= u_input.c), Struct_1(firstTrailingBit(abs(global3.x)), u_input.c, global2.a.d.zy, global2.c.d));
    var var_3 = var_2.a;
    var var_4 = Struct_2(Struct_1(13490u, _wgslsmith_div_u32(u_input.c, var_2.c.b), var_3.d.zx, vec3<i32>(11094i, 41391i, _wgslsmith_div_i32(global2.a.d.x, abs(global2.c.d.x)))), select(!vec4<bool>(any(vec2<bool>(var_2.b.x, var_2.b.x)), global2.b.x, var_2.b.x, all(global2.b.zxx)), !select(vec4<bool>(var_2.b.x, global2.b.x, false, true), vec4<bool>(global2.b.x, false, global2.b.x, var_2.b.x), all(vec3<bool>(true, var_2.b.x, global2.b.x))), select(select(vec4<bool>(true, true, global2.b.x, global2.b.x), select(global2.b, global2.b, global2.b.x), select(var_2.b, vec4<bool>(global2.b.x, false, false, true), var_2.b.x)), global2.b, !all(global2.b.yw))), Struct_1(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(global2.c.b, u_input.c, 79448u)), vec3<u32>(global3.x, global2.c.a, 4294967295u)), ~1u, vec2<i32>(-_wgslsmith_mult_i32(-18856i, global2.a.c.x), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.c.x, 5407i, -1i, global2.a.c.x), vec4<i32>(var_2.a.c.x, var_3.d.x, -1i, var_3.d.x)))), countOneBits(firstLeadingBit(vec3<i32>(-32358i, -10354i, -2147483647i))) >> (~max(vec3<u32>(0u, 1u, global2.c.a), vec3<u32>(var_2.c.b, 0u, 0u)) % vec3<u32>(32u))));
    return max(var_4.c.b, global3.x);
}

fn func_2() -> u32 {
    var var_0 = vec4<bool>(all(global2.b.yyw), (global2.b.x & false) && global2.b.x, select(true, !(true || (global4[_wgslsmith_index_u32(1u, 29u)] < global4[_wgslsmith_index_u32(u_input.c, 29u)])), true), all(!vec3<bool>(global2.b.x == global2.b.x, !global2.b.x, true)));
    var var_1 = _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~1u, 6u)], vec2<u32>(~firstLeadingBit(func_3()), ~17505u));
    var var_2 = global2.b.x;
    var_1 = _wgslsmith_mult_u32(68601u, global2.c.b);
    let var_3 = global2.a;
    return 0u & firstTrailingBit(~u_input.c);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = min(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(53712u), abs(1u), u_input.c, _wgslsmith_mod_u32(global2.a.b, global3.x)), ~vec4<u32>(19050u, u_input.c, 26941u, 24514u)), global2.c.a, 133590u ^ global3.x), ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(arg_3.c.a, 1u, u_input.c)), vec3<u32>(global3.x ^ global3.x, 1u, u_input.c)));
    let var_1 = Struct_1(~min(select(global3.x, ~4294967295u, any(arg_3.b.yy)), countOneBits(global2.a.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.a, u_input.c, arg_3.a.a, global2.c.a), vec4<u32>(min(31977u, ~0u), countOneBits(_wgslsmith_div_u32(u_input.c, global2.a.b)), _wgslsmith_clamp_u32(~var_0.x, ~22954u, _wgslsmith_div_u32(u_input.c, global2.a.b)), ~4294967295u)), select(~global2.c.c, vec2<i32>(u_input.b, -2147483647i), !all(vec4<bool>(arg_3.b.x, global2.b.x, true, true))), ~(~global2.a.d));
    global2 = Struct_2(var_1, select(select(select(select(vec4<bool>(false, false, arg_3.b.x, global2.b.x), vec4<bool>(true, arg_3.b.x, arg_3.b.x, true), vec4<bool>(arg_3.b.x, false, arg_3.b.x, true)), !vec4<bool>(arg_3.b.x, true, true, true), true), select(global2.b, select(vec4<bool>(arg_3.b.x, global2.b.x, global2.b.x, true), vec4<bool>(true, false, false, false), false), !vec4<bool>(arg_3.b.x, global2.b.x, false, false)), _wgslsmith_f_op_f32(-372f + -563f) < _wgslsmith_div_f32(-420f, global4[_wgslsmith_index_u32(global3.x, 29u)])), vec4<bool>(all(vec3<bool>(global2.b.x, arg_3.b.x, global2.b.x)), false, (global2.c.d.x >> (u_input.c % 32u)) >= arg_3.c.c.x, any(arg_3.b.xz)), false), Struct_1(_wgslsmith_add_u32(reverseBits(41092u) << (u_input.c % 32u), ~_wgslsmith_add_u32(var_1.b, arg_3.c.b)), 51141u, -(~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global2.a.d.x), arg_3.a.d.yx)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(31840i, var_1.c.x, arg_2)), select(var_1.d, vec3<i32>(2147483647i, -10280i, var_1.d.x), arg_3.b.x), global2.a.d)));
    global1 = array<vec4<u32>, 9>();
    global4 = array<f32, 29>();
    return global2.c;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-699f * global4[_wgslsmith_index_u32(func_2(), 29u)]) * _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(54936u & global2.c.b, 29u)] - _wgslsmith_div_f32(300f, -1012f))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -1i, _wgslsmith_div_i32(u_input.a, 55038i), min(u_input.a, global2.c.d.x)), ~vec4<i32>(-12731i, global2.c.c.x, global2.a.d.x, global2.a.c.x) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global2.c.d.x, 1i, u_input.a, u_input.a), vec4<i32>(0i, -1i, 68800i, global2.c.d.x))), -28591i, Struct_2(global2.c, global2.b, global2.c)), vec4<bool>(all(global2.b), 0u > _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global2.a.b, 63073u, 4294967295u), 4294967295u), any(select(!vec4<bool>(global2.b.x, true, false, true), !global2.b, global2.b.x)), global4[_wgslsmith_index_u32(4294967295u, 29u)] != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1021f) * _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(0u, 29u)])))), func_4(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(~func_4(1297f, vec4<i32>(global2.c.d.x, 48247i, -2147483647i, u_input.b), -51740i, Struct_2(global2.c, vec4<bool>(true, false, true, false), Struct_1(global2.a.a, 12778u, global2.a.d.yx, global2.c.d))).b, 29u)])), ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.c.d.x, u_input.b, u_input.b, u_input.b), vec4<i32>(-5434i, global2.a.d.x, u_input.a, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.b), vec4<i32>(global2.c.c.x, global2.c.d.x, global2.a.c.x, global2.c.c.x))), u_input.b, Struct_2(func_4(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(6666u, 29u)]), -vec4<i32>(global2.a.d.x, u_input.a, 2147483647i, global2.c.c.x), 2147483647i, Struct_2(Struct_1(global2.c.b, 1u, vec2<i32>(1i, 2147483647i), global2.c.d), global2.b, global2.a)), !(!global2.b), Struct_1(global2.a.a, ~global2.c.a, global2.a.c, reverseBits(global2.c.d)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-575f, -293f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-740f + -775f), _wgslsmith_f_op_f32(-2250f + 138f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1032f, global4[_wgslsmith_index_u32(4294967295u, 29u)], global4[_wgslsmith_index_u32(17430u, 29u)]), _wgslsmith_div_vec3_f32(vec3<f32>(-451f, -279f, global4[_wgslsmith_index_u32(37631u, 29u)]), vec3<f32>(158f, -2689f, global4[_wgslsmith_index_u32(11007u, 29u)]))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(385f, global4[_wgslsmith_index_u32(global2.c.b, 29u)], global4[_wgslsmith_index_u32(global2.a.b, 29u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(38224u, 29u)], global4[_wgslsmith_index_u32(global3.x, 29u)], 753f) + vec3<f32>(1000f, global4[_wgslsmith_index_u32(47485u, 29u)], global4[_wgslsmith_index_u32(u_input.c, 29u)])), !var_0.b.wzx))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(24600u, 29u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(2608u, 29u)]), -274f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4[_wgslsmith_index_u32(var_0.a.b, 29u)], global4[_wgslsmith_index_u32(global3.x, 29u)], -1694f), vec3<f32>(361f, -1862f, 1000f)))))))));
    let var_2 = ~u_input.c;
    let var_3 = u_input.b ^ _wgslsmith_mod_i32(1i, ~(-2147483647i));
    var_1 = vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~53980u, _wgslsmith_mod_u32(abs(~global2.a.b), reverseBits(var_2 & 1u))), 29u)], _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, var_2, u_input.c) & ~vec3<u32>(4294967295u, var_2, var_2), abs(vec3<u32>(global2.a.b, 4294967295u, 59390u))), 29u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(274f * -754f), _wgslsmith_f_op_f32(f32(-1f) * -497f), global2.b.x)))))), 1000f);
    return Struct_1(global3.x | global2.a.b, (var_2 ^ var_0.c.b) | var_0.a.a, global2.c.c, vec3<i32>(countOneBits(func_4(_wgslsmith_f_op_f32(trunc(-1286f)), vec4<i32>(-2147483647i, var_0.c.c.x, var_3, -35828i), 1i >> (1u % 32u), Struct_2(var_0.c, var_0.b, Struct_1(18745u, global2.c.b, vec2<i32>(-16225i, 1i), var_0.c.d))).c.x), var_3, var_3 | (max(var_0.c.c.x, u_input.a) | -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_1(), !select(global2.b, select(!vec4<bool>(true, false, global2.b.x, global2.b.x), vec4<bool>(global2.b.x, false, false, false), vec4<bool>(false, global2.b.x, global2.b.x, true)), vec4<bool>(global2.b.x, all(vec3<bool>(false, true, global2.b.x)), global2.b.x, true)), Struct_1(global2.a.a, ~4294967295u, min(vec2<i32>(_wgslsmith_sub_i32(global2.c.d.x, 0i), global2.c.c.x & global2.a.d.x), -(~global2.a.c)), -vec3<i32>(~0i, u_input.a, 1i)));
    global2 = Struct_2(global2.a, !select(!vec4<bool>(false, global2.b.x, global2.b.x, global2.b.x), vec4<bool>(true, false, false, true), global2.b.x), global2.c);
    var var_0 = global2.b.zxy;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(611f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(93268u, 29u)]))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(global3.x, 29u)], 528f) * vec2<f32>(761f, global4[_wgslsmith_index_u32(3030u, 29u)])))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(global3.x, 29u)], global4[_wgslsmith_index_u32(global3.x, 29u)]) - vec2<f32>(global4[_wgslsmith_index_u32(global2.c.b, 29u)], global4[_wgslsmith_index_u32(0u, 29u)]))))) + vec2<f32>(812f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.c, 29u)]) * global4[_wgslsmith_index_u32(global2.a.a, 29u)]))));
    global1 = array<vec4<u32>, 9>();
    let var_2 = u_input.c;
    let var_3 = any(global2.b);
    let var_4 = ~_wgslsmith_sub_vec2_u32((~vec2<u32>(0u, global3.x) & abs(vec2<u32>(global2.a.b, 13440u))) | reverseBits(~vec2<u32>(global2.a.b, u_input.c)), vec2<u32>(global3.x << (global3.x % 32u), u_input.c) >> (abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(35180u, var_2, 0u, 5114u), global1[_wgslsmith_index_u32(28375u, 9u)]), 6u)]) % vec2<u32>(32u)));
    global1 = array<vec4<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1038f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_1.x * var_1.x)))));
}

