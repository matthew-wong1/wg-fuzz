struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false));

var<private> global1: Struct_4 = Struct_4(vec2<f32>(-448f, -1225f), true, Struct_2(vec4<i32>(39802i, -17775i, -1i, 40297i)), vec3<i32>(2628i, 21263i, i32(-2147483648)), false);

var<private> global2: array<u32, 1> = array<u32, 1>(36736u);

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_u32(reverseBits(abs(u_input.d.x)) ^ _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(1u, 1u), abs(arg_0.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(arg_1.c, arg_1.c), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], 1u)] >> (1u % 32u))), ~global2[_wgslsmith_index_u32(~(~0u), 1u)] >> (~global2[_wgslsmith_index_u32(min(1u, global2[_wgslsmith_index_u32(u_input.d.x, 1u)] ^ arg_0.x), 1u)] % 32u));
    var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global1.a.x))));
    let var_2 = global1.c;
    let var_3 = global1.c;
    return _wgslsmith_div_i32(-41657i >> (~arg_0.x % 32u), -20256i) <= 3945i;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global1.a.x) + global1.a) + vec2<f32>(global1.a.x, 2046f))))), any(!(!(!vec2<bool>(true, global1.b)))), Struct_2(global1.c.a), ~(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1i, -1i), vec3<i32>(global1.c.a.x, 31232i, u_input.c.x)) << (_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.d.x, arg_0.x), vec3<u32>(0u, global2[_wgslsmith_index_u32(arg_0.x, 1u)], 0u)) % vec3<u32>(32u))) >> (arg_0 % vec3<u32>(32u)), any(select(vec2<bool>(true, true), select(vec2<bool>(global1.e, global1.e), vec2<bool>(true, true), false), global1.b)));
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(var_0.a * global1.a), func_3(vec2<u32>(abs(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4380u, 1u)], 1u)], 1u)], 1u)], u_input.d.x, 1u)), ~arg_0.x), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~16047u), arg_0.x), 5u)]), var_0.c, -select(_wgslsmith_add_vec3_i32(vec3<i32>(global1.d.x, var_0.d.x, global1.d.x), -vec3<i32>(global3.a.x, -11162i, -2147483647i)), -(u_input.c >> (arg_0 % vec3<u32>(32u))), !select(vec3<bool>(var_0.e, var_0.e, var_0.e), vec3<bool>(true, global1.b, false), var_0.b)), false);
    var var_1 = ~(~(~select(_wgslsmith_mult_u32(4294967295u, arg_0.x), 11825u | arg_0.x, all(vec3<bool>(var_0.b, true, false)))));
    let var_2 = ~(~(~(vec4<u32>(arg_0.x, 0u, 6633u, 53477u) >> (vec4<u32>(u_input.d.x, 4294967295u, 0u, 12134u) % vec4<u32>(32u))) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, arg_0.x, global2[_wgslsmith_index_u32(arg_0.x, 1u)]), vec4<u32>(arg_0.x, arg_0.x, 62731u, u_input.d.x))));
    var var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-1642f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1179f, global1.a.x)) * var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x))))), !var_0.b, Struct_2(vec4<i32>(-2147483647i, u_input.b, -2147483647i, -(~(-1i)))), global3.a.zzw, !var_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global1 = Struct_4(vec2<f32>(140f, _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], 40823u, u_input.d.x), select(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 30885u, u_input.d.x), vec3<u32>(u_input.d.x, 9793u, 62983u), vec3<bool>(arg_0.a, false, arg_0.a)))))), true, Struct_2(vec4<i32>(-1i, _wgslsmith_mult_i32(~u_input.c.x, -1i), abs(arg_0.b.a.x), reverseBits(firstTrailingBit(2147483647i)))), ~min(vec3<i32>(-1013i, ~2147483647i, 2147483647i | arg_0.b.a.x), vec3<i32>(-15235i, _wgslsmith_div_i32(arg_0.b.a.x, global1.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, -57262i), vec3<i32>(u_input.c.x, arg_0.b.a.x, global1.d.x)))), global1.e);
    global3 = arg_0.b;
    var var_0 = ~76902u;
    var var_1 = ~(~(reverseBits(vec4<u32>(0u, u_input.d.x, 17064u, 6637u)) ^ (vec4<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], 61189u, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)]) >> (vec4<u32>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(39775u, 1u)], 0u, 45270u) % vec4<u32>(32u)))) ^ ~vec4<u32>(u_input.d.x, 0u, ~50100u, 35467u));
    var_1 = vec4<u32>(~9830u, 3546u, reverseBits(firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.d.x)) ^ abs(_wgslsmith_mult_u32(50024u, var_1.x))), u_input.d.x);
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    let var_0 = vec3<f32>(global1.a.x, arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -737f)), 455f))));
    global1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a.x, arg_2.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1147f)) + _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(1000f))))), true, Struct_2(-vec4<i32>(-2147483647i, 2147483647i, global3.a.x ^ 2147483647i, -arg_0.b.a.x)), ~(-(~_wgslsmith_div_vec3_i32(global3.a.yyz, global3.a.zwx))), (u_input.a != ((1i | u_input.b) >> (_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(56030u, 1u)], u_input.d.x) % 32u))) || global1.e);
    return Struct_2(vec4<i32>(arg_2.d.x, u_input.a, -39339i, arg_1.b));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.a, vec2<f32>(global1.a.x, global1.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(135f, 2255f)))), vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(abs(312f))), global1.b)), false, arg_2, arg_2.a.zzw >> (max(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d.x, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], 12493u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 29364u, 54968u), vec3<u32>(251u, u_input.d.x, 0u))), ~vec3<u32>(4294967295u, u_input.d.x, 107009u)) % vec3<u32>(32u)), !all(select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(false, arg_0), select(vec2<bool>(true, false), vec2<bool>(arg_0, global1.e), vec2<bool>(global1.b, true)))));
    let var_1 = ~(~u_input.d);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(115f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))) * -1256f) < 321f;
    var var_3 = Struct_1(true, -1i, _wgslsmith_mod_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 29427u, 1u, 4294967295u) ^ vec4<u32>(global2[_wgslsmith_index_u32(1u, 1u)], var_1.x, u_input.d.x, 4294967295u), vec4<u32>(1u, 79478u, 40941u, 71183u))), select(vec4<u32>(~u_input.d.x, firstLeadingBit(u_input.d.x), global2[_wgslsmith_index_u32(~31832u, 1u)], 22324u), vec4<u32>(8806u, u_input.d.x, 1u, global2[_wgslsmith_index_u32(var_1.x, 1u)]) >> (vec4<u32>(var_1.x, 17159u, 18764u, 29178u) % vec4<u32>(32u)), select(select(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false), select(global0[_wgslsmith_index_u32(var_1.x, 22u)], vec4<bool>(false, true, var_0.b, var_0.b), global0[_wgslsmith_index_u32(1u, 22u)]), 0i >= var_0.d.x))));
    global2 = array<u32, 1>();
    return Struct_3(!(false && func_3(reverseBits(var_3.c.yx), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, u_input.d.x), 5u)])), func_4(func_1(func_1(Struct_3(false, var_0.c))), global4[_wgslsmith_index_u32(~80212u, 5u)], Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1432f, -232f) - global1.a)), arg_0, func_4(func_1(Struct_3(false, arg_2)), Struct_1(var_0.b, -73904i, var_3.c), Struct_4(vec2<f32>(566f, -330f), arg_0, arg_2, vec3<i32>(1i, 1i, u_input.c.x), true)), vec3<i32>(var_0.d.x, func_1(Struct_3(global1.e, arg_2)).b.a.x, 2147483647i | arg_1), arg_0)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(0u, u_input.d.x)), firstTrailingBit(global2[_wgslsmith_index_u32(25164u, 1u)]), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5085u, 1u)], 1u)], global2[_wgslsmith_index_u32(45828u, 1u)]), 0u) >> (vec4<u32>(132189u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(122u, global2[_wgslsmith_index_u32(48110u, 1u)], 91283u), vec3<u32>(36296u, 1u, 4294967295u)), 42710u, false), 2204u, u_input.d.x) % vec4<u32>(32u)));
    var_0 = firstLeadingBit(reverseBits(~countOneBits(abs(vec4<u32>(var_0.x, u_input.d.x, 16285u, global2[_wgslsmith_index_u32(u_input.d.x, 1u)])))));
    var var_1 = arg_1.a;
    var var_2 = abs(arg_0.c.a.x);
    var var_3 = any(select(vec2<bool>(!(arg_1.a == arg_2), false || func_3(vec2<u32>(var_0.x, global2[_wgslsmith_index_u32(0u, 1u)]), Struct_1(true, 1i, vec4<u32>(u_input.d.x, 4294967295u, var_0.x, 11549u)))), !vec2<bool>(false, !arg_0.e), vec2<bool>(any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29708u, 94028u, var_0.x, u_input.d.x), vec4<u32>(4294967295u, 17366u, u_input.d.x, global2[_wgslsmith_index_u32(1u, 1u)])), 22u)]), !func_1(Struct_3(arg_0.b, Struct_2(global1.c.a))).a)));
    return global4[_wgslsmith_index_u32(firstLeadingBit(2651u ^ u_input.d.x), 5u)];
}

fn func_7(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<vec4<bool>, 22>();
    global4 = array<Struct_1, 5>();
    var var_0 = Struct_2(global1.c.a << (arg_2.c % vec4<u32>(32u)));
    var var_1 = arg_0;
    global2 = array<u32, 1>();
    return select(vec2<bool>(true && !(!global1.e), any(select(vec3<bool>(false, global1.e, false), select(vec3<bool>(global1.b, arg_2.a, global1.b), vec3<bool>(true, true, global1.e), vec3<bool>(false, true, false)), !vec3<bool>(arg_1.e, arg_1.e, true)))), select(!vec2<bool>(true, arg_1.b), !select(select(vec2<bool>(true, false), vec2<bool>(arg_1.e, true), vec2<bool>(arg_1.e, arg_2.a)), vec2<bool>(true, arg_1.e), !vec2<bool>(arg_2.a, arg_2.a)), arg_2.a), func_1(func_5(!global1.e && (18985u >= u_input.d.x), arg_1.c.a.x, func_1(Struct_3(true, Struct_2(vec4<i32>(25711i, arg_2.b, arg_1.d.x, u_input.c.x)))).b, global1.c.a.x)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a - global1.a)), vec2<f32>(_wgslsmith_f_op_f32(1265f - 911f), 1588f)), !(!global1.b != global1.e), global1.c, global1.c.a.wwx, global2[_wgslsmith_index_u32(~(~u_input.d.x), 1u)] < 17538u), func_6(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, -1755f)), all(vec3<bool>(true, global1.e, true)), global1.c, u_input.c, global1.b), func_5(true, countOneBits(-global1.c.a.x), func_4(func_1(Struct_3(global1.e, Struct_2(global3.a))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(11438u, 1u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], 1u)]), vec4<u32>(u_input.d.x, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)), 5u)], Struct_4(vec2<f32>(475f, 358f), global1.e, Struct_2(vec4<i32>(0i, u_input.b, -30140i, global3.a.x)), global3.a.zwy, global1.b)), ~u_input.b), true, global1.b));
    global4 = array<Struct_1, 5>();
    var var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(global1.a));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-229f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(330f)) - -466f)))) - 1004f);
    var_1 = u_input.d;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x))), 1000f, u_input.c.zy, vec2<i32>(2147483647i, select(_wgslsmith_div_i32(-1i, -2147483647i), 28302i, !var_4)));
}

