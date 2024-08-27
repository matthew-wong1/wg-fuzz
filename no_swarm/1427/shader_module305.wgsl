struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-2226f, vec2<i32>(-35317i, 2147483647i));

var<private> global1: array<Struct_1, 2>;

var<private> global2: Struct_1 = Struct_1(896f, vec2<i32>(-4966i, 15142i));

var<private> global3: u32 = 19354u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global1 = array<Struct_1, 2>();
    global0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(~1u, 0u) >> (_wgslsmith_mult_u32(select(0u, firstLeadingBit(1u), true), 74588u) % 32u)), 2u)];
    let var_0 = vec2<bool>(true, true);
    global2 = global1[_wgslsmith_index_u32(1u, 2u)];
    let var_1 = Struct_2(57456i, _wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec2_i32(select(global2.b, vec2<i32>(27864i, 15740i), var_0.x), -global2.b)), global0.b.x), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(48484u, 65199u))), Struct_1(global2.a, min(~(~vec2<i32>(global0.b.x, global2.b.x)), _wgslsmith_mult_vec2_i32(-vec2<i32>(global2.b.x, 2147483647i), vec2<i32>(26277i, 1i)))));
    return _wgslsmith_clamp_i32(~(1i >> (firstLeadingBit(reverseBits(39962u)) % 32u)), _wgslsmith_dot_vec3_i32(-((vec3<i32>(2147483647i, u_input.a, -2147483647i) >> (vec3<u32>(var_1.c.x, 64807u, 8068u) % vec3<u32>(32u))) | vec3<i32>(1i, -33924i, u_input.a)), select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, 9621i, 2147483647i, 0i), vec4<i32>(26747i, global2.b.x, global2.b.x, -26186i)), -62248i, -1i), vec3<i32>(u_input.a, -global2.b.x, -1i), !vec3<bool>(var_0.x, var_0.x, var_0.x))), 0i);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.d;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0.a)), arg_2)), arg_2)))), vec2<i32>(_wgslsmith_add_i32(-7178i, ~(-1i) ^ (-1i & global2.b.x)), func_3()));
    var var_2 = select(select(vec3<bool>(select(true, true, all(vec2<bool>(true, true))), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), any(vec3<bool>(true, false, false))), !(!all(vec4<bool>(true, false, true, false)))), !(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))), _wgslsmith_mult_u32(~18925u, min(reverseBits(1u), _wgslsmith_mult_u32(arg_3.c.x, 1u))) == (~arg_3.c.x >> (arg_3.c.x % 32u)));
    var var_3 = Struct_1(global2.a, abs(var_1.b));
    var_3 = var_0;
    return _wgslsmith_mult_u32(~arg_3.c.x, _wgslsmith_sub_u32(arg_3.c.x, abs(arg_3.c.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = func_4(-25020i, -818f, _wgslsmith_f_op_f32(-global2.a), Struct_2(firstTrailingBit(-1i), func_3(), _wgslsmith_add_vec2_u32(firstLeadingBit(firstTrailingBit(vec2<u32>(33782u, 99637u))), ~vec2<u32>(1u, 52024u)), Struct_1(_wgslsmith_f_op_f32(sign(arg_2.a)), ~arg_2.b)));
    global1 = array<Struct_1, 2>();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~min(vec2<u32>(4294967295u, 1u), vec2<u32>(var_0, 21790u)) & max(vec2<u32>(var_0, var_0) | vec2<u32>(55087u, 28696u), select(vec2<u32>(var_0, 4294967295u), vec2<u32>(61544u, 0u), arg_0.x))), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(select(countOneBits(vec2<u32>(var_0, var_0)), reverseBits(vec2<u32>(var_0, var_0)), true), ~(vec2<u32>(0u, var_0) | vec2<u32>(var_0, var_0))), _wgslsmith_div_vec2_u32(select(vec2<u32>(0u, var_0), vec2<u32>(1u, var_0), arg_0.zz), vec2<u32>(var_0, 11780u) & vec2<u32>(1u, var_0)) << (vec2<u32>(~4294967295u, _wgslsmith_mod_u32(var_0, 0u)) % vec2<u32>(32u)))), 2u)];
    var var_1 = Struct_2(2147483647i, arg_2.b.x, vec2<u32>(~(51484u << (var_0 % 32u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, var_0), var_0)) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(15249u, 36847u), vec2<u32>(var_0, 4294967295u) ^ vec2<u32>(var_0, 4294967295u)) % vec2<u32>(32u)), Struct_1(arg_1.a, _wgslsmith_sub_vec2_i32(~abs(vec2<i32>(global2.b.x, u_input.a)), global0.b)));
    var var_2 = global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(var_1.c.x, abs(countOneBits(var_0))) ^ (0u << (var_1.c.x % 32u))), 2u)];
    return -2147483647i;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = ~max(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -33385i, arg_1.b.x, global0.b.x), vec4<i32>(u_input.a, u_input.a, -2147483647i, -1i) | vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(global2.b.x << ((arg_0.x | 62757u) % 32u), _wgslsmith_mult_i32(-4708i, -1i), abs(1358i), firstTrailingBit(func_2(arg_2, global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(72174u, 2u)]))));
    let var_1 = 1u;
    global2 = global1[_wgslsmith_index_u32(arg_0.x, 2u)];
    var var_2 = select(vec2<bool>(!arg_2.x, (34436u | (arg_0.x ^ 35368u)) == var_1), arg_2.xy, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a * -531f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
    return Struct_2(~1i, reverseBits(func_3()), vec2<u32>(~arg_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1022u, arg_0.x), arg_0), arg_0) ^ _wgslsmith_div_u32(reverseBits(45976u), 43177u)), arg_1);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1230f, 471f), _wgslsmith_div_f32(global2.a, -1009f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, -906f), 459f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -1985f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a, global2.a), vec2<f32>(-591f, 544f))))))));
    global3 = ~(~(~82003u)) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.c.x, 42776u), firstTrailingBit(arg_3)), arg_0.c.x), func_4(global0.b.x, 597f, _wgslsmith_f_op_f32(-global2.a), arg_0)) % 32u);
    let var_1 = ~vec3<u32>(arg_3, _wgslsmith_div_u32(~_wgslsmith_div_u32(arg_2.x, 4294967295u), arg_2.x >> (1u % 32u)), _wgslsmith_sub_u32(~(arg_2.x | 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 83098u, arg_0.c.x), _wgslsmith_sub_vec3_u32(arg_2, vec3<u32>(arg_3, arg_2.x, 0u)))));
    global3 = ~arg_0.c.x;
    var var_2 = arg_0;
    return func_1(vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(57000u), var_1.x) | var_2.c.x, 3419u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-899f)) * _wgslsmith_f_op_f32(var_2.d.a - arg_0.d.a)) * _wgslsmith_f_op_f32(abs(var_2.d.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_1.b.x, global2.b.x), 1i), select(arg_1.b, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 16942i), vec2<i32>(arg_0.b, 0i)), true))), vec3<bool>(!(!select(false, true, false)), true, !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), true).d;
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> bool {
    global0 = func_1(~(~max(_wgslsmith_mod_vec2_u32(vec2<u32>(2069u, arg_0.c.x), vec2<u32>(arg_0.c.x, arg_0.c.x)), abs(vec2<u32>(arg_0.c.x, 22794u)))), func_1(arg_0.c ^ abs(vec2<u32>(29738u, 0u)), Struct_1(arg_0.d.a, vec2<i32>(~(-10738i), 5034i)), vec3<bool>(true, select(any(vec3<bool>(true, arg_2, arg_1)), false, select(true, arg_2, arg_2)), ~1u <= ~arg_0.c.x), !arg_1).d, select(select(select(vec3<bool>(arg_1, false, true), select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_1, false, true), false), select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, false, arg_2), true)), select(!vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_2, arg_1, true), true), select(select(vec3<bool>(arg_1, arg_2, arg_2), vec3<bool>(arg_2, arg_1, true), vec3<bool>(arg_2, arg_2, false)), !vec3<bool>(arg_1, true, false), true)), !(!select(vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, arg_1, true), vec3<bool>(false, false, arg_1))), true), false).d;
    let var_0 = func_1(arg_0.c ^ countOneBits(vec2<u32>(arg_0.c.x, arg_0.c.x) ^ ~arg_0.c), func_1(select(arg_0.c, countOneBits(vec2<u32>(28611u, 4330u)) ^ vec2<u32>(4294967295u, arg_0.c.x), arg_2), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -480f), ~global0.b | vec2<i32>(-10247i, 47025i)), !vec3<bool>(arg_0.c.x != arg_0.c.x, true, true), all(!vec2<bool>(arg_2, true)) | !(!arg_2)).d, !(!select(!vec3<bool>(arg_1, arg_1, arg_2), select(vec3<bool>(arg_1, arg_2, arg_2), vec3<bool>(true, arg_2, arg_1), arg_2), select(arg_1, false, arg_2))), true).d;
    var var_1 = func_5(arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), global2.b), vec3<u32>(arg_0.c.x, arg_0.c.x, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.c.x, 89571u), ~arg_0.c.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(204u, arg_0.c.x, arg_0.c.x), ~abs(vec3<u32>(24876u, 23884u, 0u))), ~vec3<u32>(~arg_0.c.x, ~arg_0.c.x, arg_0.c.x ^ arg_0.c.x)));
    return all(select(!vec3<bool>(true, arg_2, false), select(!vec3<bool>(arg_1, false, true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(arg_1, true, true), vec3<bool>(true, arg_2, arg_1)), true), !vec3<bool>(arg_1, false, true)), !(!select(vec3<bool>(true, arg_1, arg_2), vec3<bool>(false, arg_1, true), vec3<bool>(false, arg_1, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_6(Struct_2(_wgslsmith_mod_i32(global0.b.x, 5510i) | ~2147483647i, _wgslsmith_mult_i32(reverseBits(global2.b.x), -global0.b.x), vec2<u32>(1u, 1u), func_5(func_1(vec2<u32>(54238u, 66941u), global1[_wgslsmith_index_u32(1u, 2u)], vec3<bool>(true, true, true), false), global1[_wgslsmith_index_u32(1u, 2u)], vec3<u32>(25415u, 277u, 24706u), firstTrailingBit(0u))), select(true, all(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-238f - global0.a))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.a)), -425f)), select(true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), all(vec3<bool>(false, true, true)))), func_6(Struct_2(_wgslsmith_mod_i32(-2147483647i, global2.b.x), ~global0.b.x, vec2<u32>(1u, 1u), global1[_wgslsmith_index_u32(9561u, 2u)]), true, true)), -371f >= _wgslsmith_f_op_f32(-815f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * global0.a), _wgslsmith_f_op_f32(-global0.a))));
    global3 = _wgslsmith_div_u32(78251u, select(4294967295u, 1u, true));
    var var_1 = select(vec3<u32>(1u, _wgslsmith_mult_u32(abs(49893u), _wgslsmith_dot_vec3_u32(vec3<u32>(38001u, 8930u, 1380u), ~vec3<u32>(4294967295u, 10680u, 1u))), 0u), ~vec3<u32>(reverseBits(_wgslsmith_clamp_u32(1u, 1u, 0u)), 127023u, 4294967295u), select(vec3<bool>(var_0.x & !var_0.x, any(var_0.zx), !any(vec4<bool>(var_0.x, true, false, var_0.x))), !(!vec3<bool>(var_0.x, false, true)), select(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0, true), select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, var_0.x), false), true), select(!var_0, vec3<bool>(var_0.x, true, var_0.x), !var_0), var_0)));
    var var_2 = firstTrailingBit(firstTrailingBit(vec4<i32>(~global2.b.x, -1i, global2.b.x ^ global2.b.x, select(global0.b.x, -44153i, false))) | vec4<i32>(u_input.a, -1i, global0.b.x, -2147483647i));
    var var_3 = var_0.zx;
    let var_4 = -(~(((global2.b & global0.b) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) | var_2.zz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global0.a, global0.a, false)), _wgslsmith_f_op_f32(exp2(global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1849f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(541f, 1850f, -1399f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1061f, 832f, global0.a), vec3<f32>(global2.a, global2.a, 645f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1681f, global2.a, global0.a))))), max(countOneBits(_wgslsmith_div_u32(min(var_1.x, var_1.x), ~var_1.x)), func_1(var_1.yx, func_5(func_1(var_1.yx, global1[_wgslsmith_index_u32(27658u, 2u)], var_0, var_3.x), func_1(vec2<u32>(var_1.x, var_1.x), global1[_wgslsmith_index_u32(var_1.x, 2u)], var_0, true).d, ~vec3<u32>(8935u, var_1.x, var_1.x), firstLeadingBit(0u)), var_0, var_3.x).c.x), ~_wgslsmith_mult_u32(firstTrailingBit(min(52560u, var_1.x)), 1u));
}

