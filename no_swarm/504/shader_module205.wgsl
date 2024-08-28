struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec2<u32>,
    e: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, false, false, false, true, false, true, false, false, true, false);

var<private> global1: f32 = 385f;

var<private> global2: vec2<u32> = vec2<u32>(1u, 92342u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-760f * -404f))) * _wgslsmith_f_op_f32(f32(-1f) * -599f)), _wgslsmith_f_op_f32(-1646f * _wgslsmith_f_op_f32(-1072f + 1225f)), global0[_wgslsmith_index_u32(u_input.a, 11u)])), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f - 708f) + 1f)))), _wgslsmith_f_op_f32(-1f));
    var var_1 = ~select(select(min(vec4<u32>(u_input.a, global2.x, global2.x, 1u) >> (vec4<u32>(global2.x, global2.x, 1u, 9146u) % vec4<u32>(32u)), ~vec4<u32>(global2.x, u_input.a, 36097u, 1u)), ~abs(vec4<u32>(global2.x, 0u, u_input.a, 65564u)), vec4<bool>(false, true, !global0[_wgslsmith_index_u32(u_input.a, 11u)], all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 11u)])))), vec4<u32>(global2.x, _wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(u_input.a, global2.x)), 27840u, ~1u), !global0[_wgslsmith_index_u32(u_input.a, 11u)] || true);
    return var_0.x;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(-8587i, u_input.b.x, u_input.b.x) >> (vec3<u32>(0u, u_input.a, 91243u) % vec3<u32>(32u)), vec3<i32>(3175i, u_input.b.x, u_input.b.x) >> (vec3<u32>(global2.x, global2.x, arg_2) % vec3<u32>(32u)), -vec3<i32>(-99631i, u_input.b.x, u_input.b.x)), max(vec3<i32>(select(-1i, u_input.b.x, true), -_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -1i), ~vec3<i32>(~(-22921i), firstLeadingBit(-40076i), 60839i)), select(_wgslsmith_clamp_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 27369i, 9666i), vec3<i32>(-33787i, 27146i, u_input.b.x)), vec3<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -9850i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), min(-2147483647i, u_input.b.x)), vec3<i32>(-u_input.b.x, u_input.b.x << (4294967295u % 32u), u_input.b.x)), -vec3<i32>(-8649i, 1i, u_input.b.x) << (vec3<u32>(u_input.a, _wgslsmith_mult_u32(0u, 4805u), ~u_input.a) % vec3<u32>(32u)), any(select(vec4<bool>(false, false, true, false), !vec4<bool>(false, arg_1.x, false, true), !vec4<bool>(arg_1.x, true, true, arg_1.x)))));
    var var_2 = abs(abs(_wgslsmith_sub_i32(select(var_1.x, 0i, arg_1.x), u_input.b.x))) >> (arg_2 % 32u);
    var_2 = ~(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(~(-10121i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, 2147483647i, 71440i), vec4<i32>(var_1.x, u_input.b.x, var_1.x, var_1.x)))) >> (max(global2.x, global2.x >> (69672u % 32u)) % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(min(arg_0, -1121f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-731f, arg_0, arg_0) * vec3<f32>(arg_0, _wgslsmith_f_op_f32(max(-923f, arg_0)), 605f))));
    return var_3.x;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1118f * 3267f))), !(!select(select(vec2<bool>(arg_0.c, false), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 11u)]), false), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(25784u, 11u)]))), _wgslsmith_sub_u32(27859u, 1943u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a.a + _wgslsmith_f_op_f32(-arg_0.a.b)))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_mod_vec4_u32(vec4<u32>(~3002u, ~global2.x, u_input.a, 76007u), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0.b.d.x, global2.x, arg_2.x, 15620u)), ~arg_0.b.c)) & firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(50439u, arg_0.d.x, arg_2.x, 0u), reverseBits(arg_2))), ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(u_input.a, arg_0.a.d.x), vec2<u32>(40088u, 60715u)), select(arg_2.zw, vec2<u32>(1u, arg_2.x), arg_0.c), _wgslsmith_mult_vec2_u32(arg_0.a.c.xy, arg_0.b.c.wx)) | ~arg_0.b.d);
    var var_2 = _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(max(20107i << (arg_2.x % 32u), -55640i), reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), firstTrailingBit(vec3<i32>(-1i, -21561i, -33894i))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) - _wgslsmith_f_op_f32(arg_1.a + 508f)), var_0)));
    var var_4 = Struct_3(~firstTrailingBit(~(~vec2<u32>(u_input.a, 35318u))), ~(~abs(min(45542u, global2.x))), -448f, ~firstLeadingBit(countOneBits(u_input.b >> (vec2<u32>(50146u, 4294967295u) % vec2<u32>(32u)))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, 9342i, var_2.x), ~vec3<i32>(-2147483647i, var_2.x, 26632i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, -2147483647i), vec3<i32>(2147483647i, -25304i, 1i))));
    return !(!vec4<bool>(arg_0.e, true, false || all(vec3<bool>(arg_0.e, true, false)), false));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    global2 = vec2<u32>(46391u, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(48713u, global2.x, 0u) & vec3<u32>(arg_0, global2.x, u_input.a)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(35001u, 0u, arg_0), vec3<u32>(arg_0, 45927u, 1u))));
    let var_0 = ~global2.x;
    global0 = array<bool, 11>();
    let var_1 = max(~_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, 1i))), ~u_input.b.x);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1110f)))))));
    return Struct_1(-1081f);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * arg_0.a))));
    let var_1 = Struct_4(Struct_2(arg_0, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) * -276f)), countOneBits(select(vec4<u32>(global2.x, 1u, global2.x, 4294967295u) >> (vec4<u32>(u_input.a, global2.x, 4294967295u, global2.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(43992u, 43796u, 10095u, 4294967295u)), !vec4<bool>(global0[_wgslsmith_index_u32(12687u, 11u)], global0[_wgslsmith_index_u32(global2.x, 11u)], false, false))), ~vec2<u32>(30483u, 4294967295u)), Struct_2(arg_0, func_4(firstTrailingBit(global2.x), vec3<bool>(true, true, func_1(Struct_4(Struct_2(arg_0, arg_0.a, vec4<u32>(global2.x, u_input.a, 0u, 9885u), vec2<u32>(11392u, u_input.a)), Struct_2(Struct_1(var_0.a), 496f, vec4<u32>(u_input.a, global2.x, 54098u, 34715u), vec2<u32>(1u, u_input.a)), true, vec2<u32>(u_input.a, 16467u), false), Struct_1(-730f), vec4<u32>(global2.x, 591u, global2.x, 28666u)).x), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 11u)], true, true), false).a, min(~vec4<u32>(global2.x, u_input.a, 0u, global2.x), ~vec4<u32>(1u, 15732u, global2.x, global2.x)) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, global2.x, 8912u), vec4<u32>(global2.x, global2.x, u_input.a, global2.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, 26524u, global2.x), vec4<u32>(1u, u_input.a, u_input.a, global2.x))), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.a)), firstLeadingBit(~vec2<u32>(90903u, u_input.a)))), all(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(54412u, 11u)], global0[_wgslsmith_index_u32(global2.x, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(34208u, 11u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(87452u, 11u)], global0[_wgslsmith_index_u32(global2.x, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(16321u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)])), !vec4<bool>(global0[_wgslsmith_index_u32(14228u, 11u)], false, true, global0[_wgslsmith_index_u32(u_input.a, 11u)]), func_1(Struct_4(Struct_2(arg_0, -1998f, vec4<u32>(global2.x, 4294967295u, global2.x, 1u), vec2<u32>(u_input.a, 79250u)), Struct_2(Struct_1(939f), 523f, vec4<u32>(u_input.a, global2.x, global2.x, 66335u), vec2<u32>(1u, 0u)), true, vec2<u32>(28478u, 1u), true), arg_0, vec4<u32>(global2.x, 15059u, 167u, 12582u)).x)), abs(_wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(4294967295u, global2.x)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a))))), func_1(Struct_4(Struct_2(Struct_1(arg_1), _wgslsmith_div_f32(673f, var_0.a), vec4<u32>(u_input.a, u_input.a, global2.x, 24254u) >> (vec4<u32>(global2.x, 0u, 17137u, u_input.a) % vec4<u32>(32u)), ~vec2<u32>(10440u, u_input.a)), Struct_2(arg_0, arg_1, _wgslsmith_mod_vec4_u32(vec4<u32>(79416u, 7277u, 3477u, 60661u), vec4<u32>(global2.x, global2.x, u_input.a, 0u)), vec2<u32>(1u, global2.x)), select(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 10742u, 27624u, 1u), vec4<u32>(u_input.a, global2.x, 41037u, 16627u)), 11u)], true), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, global2.x), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-var_0.a) <= var_0.a), arg_0, vec4<u32>(1u, u_input.a, _wgslsmith_mod_u32(21775u, u_input.a) >> (~31869u % 32u), ~(u_input.a & global2.x))).x);
    let var_2 = !(!vec4<bool>(select(true, var_1.c, var_1.e) | (false && global0[_wgslsmith_index_u32(1u, 11u)]), true, all(vec2<bool>(true, var_1.c)), var_1.a.a.a != _wgslsmith_div_f32(514f, var_0.a)));
    var var_3 = Struct_5(var_1.a.b);
    let var_4 = Struct_3(~vec2<u32>(select(0u, min(u_input.a, 29307u), all(var_2.xxy)), 4294967295u), 48219u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)))), u_input.b, vec3<i32>(_wgslsmith_clamp_i32(-1i, -(u_input.b.x << (2297u % 32u)), 1i), 31770i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)));
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-910f))) <= -613f;
    var var_1 = select(vec4<u32>(u_input.a, firstTrailingBit(1u), u_input.a, u_input.a), ~(~vec4<u32>(u_input.a, 0u, 10067u, 85108u) | firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, global2.x, global2.x, 54572u)))), any(select(vec4<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 11u)], true, true)), true, true, var_0), vec4<bool>(u_input.a < 31338u, any(vec4<bool>(var_0, true, global0[_wgslsmith_index_u32(4294967295u, 11u)], false)), global2.x <= global2.x, true), global0[_wgslsmith_index_u32(global2.x & ~global2.x, 11u)])));
    let var_2 = Struct_2(func_5(func_4((var_1.x << (var_1.x % 32u)) ^ ~global2.x, select(select(vec3<bool>(false, true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(var_1.x, 11u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 11u)], true, var_0)), !vec3<bool>(var_0, var_0, true), true), select(select(vec4<bool>(var_0, global0[_wgslsmith_index_u32(var_1.x, 11u)], var_0, global0[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(var_0, false, true, global0[_wgslsmith_index_u32(26927u, 11u)]), vec4<bool>(var_0, true, false, var_0)), func_1(Struct_4(Struct_2(Struct_1(1590f), 574f, vec4<u32>(1u, global2.x, 5356u, 1u), vec2<u32>(0u, 16095u)), Struct_2(Struct_1(-315f), 1442f, vec4<u32>(1u, 18715u, var_1.x, 0u), vec2<u32>(34709u, 1u)), global0[_wgslsmith_index_u32(0u, 11u)], vec2<u32>(global2.x, 0u), false), Struct_1(1000f), vec4<u32>(23076u, u_input.a, global2.x, var_1.x)), vec4<bool>(true, true, global0[_wgslsmith_index_u32(global2.x, 11u)], false)), !all(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 11u)], var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(0u, vec3<bool>(false, true, global0[_wgslsmith_index_u32(global2.x, 11u)]), vec4<bool>(true, var_0, false, var_0), false).a * -1582f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(575f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1444f) + _wgslsmith_f_op_f32(step(-522f, -1000f)))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, abs(u_input.a), _wgslsmith_clamp_u32(4946u, 0u, var_1.x), _wgslsmith_mult_u32(0u, 31030u)), vec4<u32>(1u << (global2.x % 32u), _wgslsmith_mod_u32(var_1.x, 1u), ~u_input.a, global2.x), vec4<u32>(_wgslsmith_mult_u32(29667u, 39885u), var_1.x, _wgslsmith_sub_u32(var_1.x, 48795u), global2.x)), ~select(reverseBits(vec4<u32>(1u, u_input.a, 30961u, var_1.x)), ~vec4<u32>(0u, 97905u, 45482u, 1u), var_0), _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(70175u, 806u, global2.x, u_input.a), vec4<u32>(u_input.a, 30859u, var_1.x, 61712u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global2.x, var_1.x, 0u, u_input.a), select(vec4<u32>(global2.x, 19394u, u_input.a, 27681u), vec4<u32>(4294967295u, 4294967295u, var_1.x, u_input.a), true)))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.a, var_1.x) | vec4<u32>(29856u, 0u, global2.x, 0u), vec4<u32>(u_input.a, u_input.a, 0u, var_1.x)), _wgslsmith_div_u32(~1u, 23187u)));
    global2 = vec2<u32>(~(~(~39469u) | ~(~var_2.c.x)), global2.x);
    let var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(~(u_input.a ^ u_input.a), 1u, var_2.c.x, global2.x)), reverseBits(u_input.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.a, _wgslsmith_f_op_f32(220f - var_3.a)), vec2<f32>(_wgslsmith_f_op_f32(311f + var_2.b), func_4(4294967295u, select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 11u)], false, var_0), vec3<bool>(var_0, true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)])), vec4<bool>(var_0, true, false, var_0), true).a))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b, u_input.b << (vec2<u32>(u_input.a, global2.x) % vec2<u32>(32u))) << (abs(_wgslsmith_sub_vec2_u32(var_2.c.yy, vec2<u32>(var_1.x, u_input.a))) % vec2<u32>(32u)), -(~u_input.b), abs(u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_3.a, var_3.a)))))));
}

