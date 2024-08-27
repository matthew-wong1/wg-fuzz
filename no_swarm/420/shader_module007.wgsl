struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 4666i;

var<private> global1: Struct_1 = Struct_1(false, vec3<i32>(0i, 1i, 18793i), vec2<bool>(true, false), vec3<i32>(-8666i, 2147483647i, 1i), 12903u);

var<private> global2: array<u32, 31> = array<u32, 31>(44179u, 1u, 56389u, 49846u, 14956u, 52878u, 4294967295u, 56582u, 60118u, 0u, 1u, 11773u, 1u, 2578u, 41125u, 45280u, 50730u, 59902u, 1676u, 34548u, 0u, 3193u, 16029u, 12873u, 0u, 4294967295u, 29593u, 11982u, 2776u, 20538u, 34430u);

var<private> global3: vec2<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(4294967295u, 31u)], Struct_2(arg_0, _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0.d.x, -2147483647i, arg_0.d.x, global1.b.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-3469i, -32501i, 2147483647i, global1.d.x), vec4<i32>(arg_0.b.x, global1.b.x, 1684i, 0i))), arg_0, Struct_1(global1.c.x, firstTrailingBit(vec3<i32>(-14055i, global1.b.x, -1i)), !(!vec2<bool>(false, arg_0.a)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.b.x, u_input.a, 0i), vec3<i32>(arg_0.d.x, 44732i, 6578i)), global1.b, !global3.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 4294967295u), max(25334u, 27992u), global2[_wgslsmith_index_u32(global1.e, 31u)] << (1u % 32u)))), arg_0.e, Struct_1(!select(any(vec4<bool>(arg_0.c.x, true, global3.x, arg_0.c.x)), false, false), global1.b, select(select(vec2<bool>(false, true), vec2<bool>(global3.x, false), arg_0.d.x != global1.b.x), vec2<bool>(true, true), !select(vec2<bool>(global1.a, true), arg_0.c, arg_0.a)), ~select(global1.d, vec3<i32>(38615i, arg_0.d.x, arg_0.b.x), vec3<bool>(global3.x, true, arg_0.c.x)) << ((vec3<u32>(arg_0.e, global1.e, global2[_wgslsmith_index_u32(u_input.b, 31u)]) >> (select(vec3<u32>(7012u, global1.e, 1u), vec3<u32>(1u, 47751u, 13089u), global3.x) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(global2[_wgslsmith_index_u32(42907u, 31u)])));
    var var_1 = var_0.b;
    global3 = var_1.a.c;
    let var_2 = global1.c;
    let var_3 = arg_1;
    return var_0.b.a.c;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: u32) -> vec3<bool> {
    global2 = array<u32, 31>();
    var var_0 = Struct_4(global1.e, Struct_2(Struct_1(global3.x && (global1.a && false), global1.b << ((vec3<u32>(u_input.b, arg_3, 20726u) & vec3<u32>(1u, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16523u, 31u)], 31u)])) % vec3<u32>(32u)), !func_3(Struct_1(true, vec3<i32>(arg_2, -1i, arg_0), global1.c, global1.d, 40301u), 1089f), _wgslsmith_mod_vec3_i32(-global1.d, -vec3<i32>(global1.b.x, -6994i, 26589i)), global2[_wgslsmith_index_u32(54416u, 31u)]), reverseBits(_wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, global1.b.x, arg_2, -38765i), vec4<i32>(1i, arg_0, 1i, arg_0), false), vec4<i32>(arg_0, -2147483647i, -7285i, u_input.a) | vec4<i32>(global1.b.x, arg_2, arg_2, global1.d.x))), Struct_1(15228i >= global1.d.x, vec3<i32>(-44463i, max(-2147483647i, -1i), -959i), select(global1.c, global1.c, vec2<bool>(global3.x, false)), select(vec3<i32>(global1.b.x, u_input.a, 2147483647i), _wgslsmith_div_vec3_i32(global1.d, global1.d), select(vec3<bool>(global1.a, arg_1, false), vec3<bool>(global1.c.x, true, arg_1), true)), global1.e), Struct_1(!(!arg_1), ~(~vec3<i32>(u_input.a, arg_2, 2147483647i)), vec2<bool>(true, any(vec2<bool>(false, true))), _wgslsmith_add_vec3_i32(firstLeadingBit(global1.b), -global1.b), ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28687u, 31u)], 31u)] >> (0u % 32u)))), _wgslsmith_mod_u32(abs(global1.e), u_input.b << (((arg_3 | 7933u) << (_wgslsmith_mult_u32(1u, 6822u) % 32u)) % 32u)), Struct_1(false, max(vec3<i32>(arg_0, arg_0, 1i), vec3<i32>(19639i, global1.b.x, arg_2) >> (vec3<u32>(u_input.b, 1u, global2[_wgslsmith_index_u32(u_input.b, 31u)]) % vec3<u32>(32u))), select(func_3(Struct_1(global3.x, global1.d, vec2<bool>(false, global3.x), global1.d, global1.e), -299f), func_3(Struct_1(true, vec3<i32>(arg_0, 0i, 14887i), vec2<bool>(arg_1, global1.c.x), global1.b, 7716u), -1446f), !global1.c), global1.b, 1u));
    global2 = array<u32, 31>();
    var var_1 = 1605f;
    let var_2 = arg_2;
    return select(select(!(!vec3<bool>(global1.a, global3.x, var_0.b.a.a)), select(!(!vec3<bool>(false, var_0.d.a, false)), vec3<bool>(all(global1.c), all(vec4<bool>(global3.x, false, global1.a, var_0.b.d.a)), any(vec3<bool>(arg_1, var_0.b.d.a, global1.c.x))), vec3<bool>(true, global1.c.x, true)), arg_1), vec3<bool>(global3.x, false || arg_1, all(global1.c)), global3.x);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, -1834f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1095f, -1509f) * vec2<f32>(-446f, 579f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, 575f)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(538f + var_0.x), _wgslsmith_f_op_f32(select(1292f, var_0.x, true)))))), var_0.x);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(var_0.x + 964f)))));
    global3 = !select(global1.c, func_3(Struct_1(true, arg_1.b.c.d >> (vec3<u32>(12623u, 0u, 11509u) % vec3<u32>(32u)), !vec2<bool>(true, global1.c.x), select(vec3<i32>(43212i, u_input.a, global1.d.x), vec3<i32>(u_input.a, 0i, 1i), global1.a), ~arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -943f) + _wgslsmith_f_op_f32(max(var_0.x, -197f)))), select(select(arg_1.d.c, global1.c, true), !arg_1.d.c, true));
    let var_1 = Struct_4(~abs(arg_1.d.e), Struct_2(arg_1.d, reverseBits(-arg_1.b.b) ^ -firstTrailingBit(arg_1.b.b), Struct_1(false, vec3<i32>(-arg_1.b.d.b.x, arg_1.b.b.x, firstTrailingBit(u_input.a)), vec2<bool>(true || global1.a, any(vec2<bool>(true, arg_1.d.c.x))), arg_1.d.b, 38549u), arg_1.d), global2[_wgslsmith_index_u32(~66581u, 31u)], arg_1.b.c);
    return Struct_4(arg_1.c >> ((max(global2[_wgslsmith_index_u32(~12001u, 31u)], countOneBits(global1.e)) ^ arg_2.x) % 32u), Struct_2(arg_1.d, vec4<i32>(~(-32272i), -1i, abs(-var_1.d.b.x), max(global1.b.x, _wgslsmith_mod_i32(-1i, -72218i))), Struct_1(min(0i, var_1.d.b.x) <= u_input.a, max(min(arg_1.b.d.d, vec3<i32>(global1.d.x, 14626i, global1.b.x)), -vec3<i32>(1i, u_input.a, -60056i)), func_2(arg_1.d.b.x, global1.c.x || global1.a, 28441i, 1u).zx, countOneBits(global1.d & vec3<i32>(39486i, 0i, 2955i)), 0u), Struct_1(_wgslsmith_sub_u32(global1.e, global2[_wgslsmith_index_u32(0u, 31u)]) > ~global2[_wgslsmith_index_u32(12813u, 31u)], -firstLeadingBit(vec3<i32>(u_input.a, 1i, arg_1.b.a.d.x)), select(vec2<bool>(false, var_1.d.c.x), !vec2<bool>(global3.x, arg_0), select(arg_1.d.c, vec2<bool>(false, arg_1.b.a.a), vec2<bool>(true, true))), global1.d, _wgslsmith_sub_u32(~0u, 4294967295u & var_1.d.e))), 553u, var_1.d);
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(all(select(select(!vec3<bool>(true, global3.x, false), select(vec3<bool>(global1.a, true, false), vec3<bool>(global1.c.x, global3.x, global3.x), true), false), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-9876i, 42871i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, global1.b.x)), true, i32(-1i) * -28114i, _wgslsmith_mod_u32(40007u, 4294967295u)), !(!vec3<bool>(true, false, global3.x)))), Struct_4(_wgslsmith_mult_u32(~(u_input.b << (27866u % 32u)), 4294967295u), Struct_2(Struct_1(true, select(vec3<i32>(2147483647i, global1.d.x, -2147483647i), global1.b, global1.a), vec2<bool>(true, global1.c.x), global1.b, 4294967295u >> (u_input.b % 32u)), abs(select(vec4<i32>(u_input.a, u_input.a, u_input.a, 21930i), vec4<i32>(-1i, 0i, 0i, 19628i), global1.c.x)), Struct_1(4294967295u <= global1.e, reverseBits(global1.d), !global1.c, global1.b, 4294967295u), Struct_1(!global3.x, -vec3<i32>(global1.b.x, global1.d.x, u_input.a), select(global1.c, global1.c, true), global1.d, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.e, 31u)], 31u)], 42867u), 31u)])), ~_wgslsmith_mod_u32(4294967295u, 121520u) ^ u_input.b, Struct_1(!(u_input.a <= -18736i), vec3<i32>(reverseBits(global1.d.x), -40605i, countOneBits(78352i)), !(!global1.c), vec3<i32>(-u_input.a, 0i, -11225i), 1u)), vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 31u)], 31u)], 31u)], 0u, global1.e)), abs(min(vec3<u32>(global1.e, 44037u, u_input.b), vec3<u32>(1u, 53255u, global1.e)))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(u_input.b, 31u)]), vec2<u32>(4294967295u, u_input.b)) ^ global1.e));
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global1.e, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(29462u, 4294967295u, global1.e, 0u), vec4<u32>(var_0.c, global2[_wgslsmith_index_u32(u_input.b, 31u)], u_input.b, 4294967295u)), ~vec4<u32>(1u, u_input.b, global2[_wgslsmith_index_u32(global1.e, 31u)], 0u)), 31u)] ^ _wgslsmith_dot_vec3_u32(vec3<u32>(10115u, u_input.b, 32392u), firstLeadingBit(vec3<u32>(var_0.d.e, var_0.a, 0u)))), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(global1.e, global1.e, 4294967295u)), vec3<u32>(22021u, ~4294967295u, firstTrailingBit(1u))), 1u));
    let var_2 = func_4(!var_0.d.c.x, func_4(false, func_4(true, Struct_4(var_1.x, func_4(global1.c.x, Struct_4(4294967295u, Struct_2(Struct_1(global3.x, var_0.d.d, vec2<bool>(var_0.d.c.x, true), vec3<i32>(global1.d.x, u_input.a, 1i), var_1.x), var_0.b.b, var_0.b.c, Struct_1(true, global1.d, vec2<bool>(true, true), global1.d, global1.e)), var_0.d.e, Struct_1(global3.x, var_0.d.d, vec2<bool>(global3.x, global3.x), var_0.d.b, var_1.x)), var_1.zz).b, ~u_input.b, Struct_1(global3.x, vec3<i32>(-2294i, u_input.a, u_input.a), vec2<bool>(false, false), vec3<i32>(global1.d.x, global1.b.x, -2147483647i), 4294967295u)), firstTrailingBit(~var_1.zz)), _wgslsmith_mult_vec2_u32(var_1.yx, reverseBits(var_1.xx >> (var_1.zz % vec2<u32>(32u))))), vec2<u32>(u_input.b, _wgslsmith_add_u32(~var_1.x | (4294967295u >> (var_0.d.e % 32u)), 31913u))).b;
    var var_3 = global1.d;
    let var_4 = vec3<i32>(var_0.d.d.x, 1i, _wgslsmith_sub_i32(i32(-1i) * -var_2.d.b.x, _wgslsmith_mod_i32(1i, -(~var_2.c.b.x))));
    return var_0.b;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = ~vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global1.d.x, u_input.a), arg_0.b)) ^ func_4(false, func_4(arg_0.a.c.x, Struct_4(u_input.b, arg_0, 0u, arg_0.c), vec2<u32>(global1.e, 67196u)), ~vec2<u32>(0u, 623u)).d.d.x, i32(-1i) * -2147483647i);
    global2 = array<u32, 31>();
    var var_1 = !(!(!select(select(vec3<bool>(true, global1.c.x, true), vec3<bool>(false, global3.x, arg_0.d.a), false), select(vec3<bool>(false, global1.c.x, false), vec3<bool>(true, global1.c.x, true), vec3<bool>(arg_0.d.c.x, arg_0.a.c.x, global3.x)), select(vec3<bool>(global1.a, true, true), vec3<bool>(global1.a, true, global1.a), vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.d.a)))));
    global1 = func_4(func_1().d.a, func_4(select(true, false, true), Struct_4(global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(u_input.b, 31u)], 1u), 31u)], arg_0, 50267u, func_1().d), ~(~min(vec2<u32>(global1.e, arg_0.d.e), vec2<u32>(1u, 4294967295u)))), vec2<u32>(u_input.b, 65811u << (~global1.e % 32u))).b.a;
    let var_2 = arg_0;
    return var_2;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = min(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(global1.b.x, 2147483647i), select(-1i, 0i, true)), -17138i), _wgslsmith_div_i32(-global1.b.x, global1.b.x)), func_5(Struct_2(func_1().c, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-10293i, global1.d.x, u_input.a, u_input.a), vec4<i32>(22510i, u_input.a, global1.b.x, -23923i)), arg_1.b.b >> (vec4<u32>(0u, arg_2.x, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 31u)]) % vec4<u32>(32u))), Struct_1(!arg_1.b.d.c.x, arg_1.d.b, !vec2<bool>(global3.x, global3.x), select(vec3<i32>(-2147483647i, arg_1.b.d.d.x, 4076i), vec3<i32>(29175i, 2147483647i, u_input.a), vec3<bool>(false, false, arg_1.d.c.x)), abs(arg_1.a)), Struct_1(arg_1.d.a, vec3<i32>(58533i, arg_1.d.b.x, arg_1.b.b.x), func_2(arg_1.b.c.d.x, global3.x, arg_1.b.b.x, 4294967295u).yy, arg_1.b.a.d, abs(global1.e))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-926f * 1900f), 276f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(348f)), -1779f, _wgslsmith_f_op_f32(1249f - -488f), -182f)))).d.b.x);
    let var_1 = i32(-1i) * -(((var_0 << (0u % 32u)) & var_0) << (firstLeadingBit(37047u) % 32u));
    let var_2 = Struct_4(3281u, func_4(arg_1.d.a, Struct_4(~(~u_input.b), Struct_2(Struct_1(arg_1.b.d.a, global1.d, arg_1.d.c, vec3<i32>(var_0, u_input.a, global1.b.x), global2[_wgslsmith_index_u32(arg_2.x, 31u)]), vec4<i32>(-1i, var_1, var_1, var_1), arg_1.d, Struct_1(true, vec3<i32>(global1.b.x, -12932i, 13592i), vec2<bool>(global3.x, arg_1.b.a.c.x), vec3<i32>(arg_1.b.d.d.x, var_0, var_1), global1.e)), 24870u, func_5(Struct_2(Struct_1(arg_1.b.a.a, arg_1.d.b, arg_0, global1.d, global1.e), vec4<i32>(global1.d.x, 6199i, 2147483647i, u_input.a), Struct_1(true, global1.b, vec2<bool>(global1.a, global3.x), arg_1.d.d, arg_1.b.d.e), arg_1.d), _wgslsmith_f_op_f32(1369f - -907f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, -1434f, 1000f, 1636f))).c), arg_2).b, ~global2[_wgslsmith_index_u32(u_input.b, 31u)], Struct_1(func_3(arg_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1184f, -273f)) + _wgslsmith_f_op_f32(-1000f - 916f))).x, vec3<i32>(-var_0, 13777i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-25128i, var_0, var_1, var_0), arg_1.b.b)), select(vec2<bool>(false, true), global1.c, arg_1.b.d.c), -_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-2147483647i, var_0, -1i)), global1.b), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1.e, 98685u), vec3<u32>(4294967295u, arg_1.c, 1u)), 31u)] & ~(~arg_2.x)));
    let var_3 = 51411i;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1007f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-168f, 162f)))));
    return Struct_2(var_2.d, arg_1.b.b, func_1().d, func_4(global1.a, Struct_4(4294967295u, func_5(Struct_2(Struct_1(arg_0.x, vec3<i32>(8919i, -12699i, -2966i), vec2<bool>(arg_1.b.c.c.x, false), global1.b, 46409u), var_2.b.b, var_2.b.c, var_2.d), -385f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 897f, -312f, -1142f))), 1u, arg_1.d), ~select(vec2<u32>(var_2.c, 0u) ^ vec2<u32>(4294967295u, 75671u), ~arg_2, func_3(Struct_1(arg_0.x, vec3<i32>(var_1, 2147483647i, 2147483647i), var_2.d.c, vec3<i32>(40631i, u_input.a, 17539i), u_input.b), 1491f).x)).d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -8076i;
    global2 = array<u32, 31>();
    var var_0 = Struct_4(23955u, func_6(select(!(!global1.c), select(vec2<bool>(true, global1.a), global1.c, !vec2<bool>(global1.c.x, global3.x)), select(true, true, global1.a)), Struct_4(global2[_wgslsmith_index_u32(~global1.e | 1u, 31u)], func_5(func_1(), 1000f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1476f, 984f, -880f, -901f) * vec4<f32>(202f, -797f, 1907f, 671f))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.e, global2[_wgslsmith_index_u32(30498u, 31u)], 0u, u_input.b), vec4<u32>(global2[_wgslsmith_index_u32(1u, 31u)], 4294967295u, 2465u, u_input.b), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], u_input.b, u_input.b, 8930u)), vec4<u32>(36381u, global2[_wgslsmith_index_u32(u_input.b, 31u)], 14665u, global2[_wgslsmith_index_u32(37175u, 31u)]) | vec4<u32>(global1.e, global2[_wgslsmith_index_u32(4294967295u, 31u)], 89484u, 3183u)), func_1().c), reverseBits(vec2<u32>(4294967295u, 31530u) & vec2<u32>(4294967295u, u_input.b)) << (_wgslsmith_mod_vec2_u32(abs(vec2<u32>(88430u, u_input.b)), vec2<u32>(global2[_wgslsmith_index_u32(1u, 31u)], 27778u)) % vec2<u32>(32u))), 58401u, Struct_1(any(!(!vec4<bool>(global1.a, true, true, global3.x))), _wgslsmith_add_vec3_i32(~vec3<i32>(1089i, -2147483647i, u_input.a), vec3<i32>(global1.b.x, global1.b.x, u_input.a)), !select(!global1.c, global1.c, select(global1.c, vec2<bool>(true, global3.x), global3.x)), global1.b, 42056u));
    var var_1 = func_4(false, Struct_4(4294967295u >> (global1.e % 32u), var_0.b, 17288u, Struct_1(false, ~_wgslsmith_add_vec3_i32(vec3<i32>(15442i, var_0.d.b.x, 2532i), vec3<i32>(u_input.a, var_0.b.c.d.x, 20609i)), !(!var_0.d.c), ~global1.b, ~u_input.b)), vec2<u32>(_wgslsmith_add_u32(~global2[_wgslsmith_index_u32(0u | var_0.c, 31u)], max(firstLeadingBit(4294967295u), 51453u)), u_input.b));
    global1 = var_1.b.d;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-526f, -1347f) * _wgslsmith_f_op_f32(ceil(-526f))), 1509f) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-482f)) - _wgslsmith_f_op_f32(max(559f, 516f))), -119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1431f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.c.d.x, vec2<i32>(var_1.b.d.b.x, u_input.a), var_0.d.d, -vec3<i32>(_wgslsmith_div_i32(var_1.b.b.x, 1488i), _wgslsmith_dot_vec4_i32(vec4<i32>(-33897i, 30310i, var_1.d.d.x, var_1.b.d.d.x), var_0.b.b & vec4<i32>(-6563i, 0i, -2147483647i, u_input.a)), _wgslsmith_div_i32(_wgslsmith_mod_i32(-4911i, 13776i), 1i)));
}

