struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 22> = array<u32, 22>(29390u, 1u, 1u, 34766u, 1u, 43625u, 33477u, 1u, 4294967295u, 0u, 31226u, 1u, 4294967295u, 4294967295u, 10534u, 82189u, 0u, 3086u, 44065u, 18888u, 42148u, 4294967295u);

var<private> global2: array<i32, 28> = array<i32, 28>(-6331i, -1i, 0i, 2147483647i, -42563i, -14275i, 46969i, -4125i, 2147483647i, 20341i, 2147483647i, -75041i, -14567i, i32(-2147483648), -914i, -26728i, 31189i, 1i, 1i, 72587i, 2147483647i, 47938i, 50948i, 0i, -1648i, 25256i, i32(-2147483648), i32(-2147483648));

var<private> global3: array<u32, 9>;

var<private> global4: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(true, 153f), Struct_4(true, -812f), Struct_4(false, 1000f), Struct_4(false, 842f), Struct_4(true, -1296f), Struct_4(false, 1159f), Struct_4(false, 491f), Struct_4(true, -837f), Struct_4(false, 236f), Struct_4(false, -615f), Struct_4(true, -1502f), Struct_4(false, -1437f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = all(!vec2<bool>(true | any(vec4<bool>(false, false, false, false)), (global1[_wgslsmith_index_u32(4294967295u, 22u)] | global3[_wgslsmith_index_u32(4294967295u, 9u)]) < global1[_wgslsmith_index_u32(4294967295u, 22u)]));
    global0 = true;
    var_0 = !(!(!all(vec2<bool>(true, true))));
    var var_1 = Struct_3(vec3<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(101137u, 0u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35773u, 9u)], 22u)], 9u)], 18614u), vec4<u32>(0u, global1[_wgslsmith_index_u32(66560u, 22u)], 1u, 82327u))), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 9u)], 9u)] | abs(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21014u, 9u)], 22u)])) >> (abs(vec3<u32>(_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(71534u, 9u)], 22u)], 22u)], 22u)]), 4294967295u, _wgslsmith_sub_u32(51321u, global1[_wgslsmith_index_u32(70004u, 22u)]))) % vec3<u32>(32u)), Struct_2(-8416i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(725f, 1394f, 338f), vec3<f32>(-1243f, -760f, -508f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1957f, -608f, -125f)))), select(vec4<bool>(true, true, true, any(vec2<bool>(true, false))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1225f, 479f) - vec2<f32>(-1553f, 708f)) * vec2<f32>(1540f, 519f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-202f, -150f), vec2<f32>(230f, -103f))))), Struct_2(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(u_input.a.x, 2147483647i), ~41474i >> (firstLeadingBit(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 22u)], 9u)]) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(763f, 525f, -1221f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -178f, 1172f)), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-673f, -480f, 1134f)))), select(vec4<bool>(any(vec4<bool>(true, false, false, false)), false, any(vec4<bool>(true, false, true, false)), true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1145f, 220f) - vec2<f32>(-931f, 450f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1019f, 837f))))))), Struct_1(vec4<i32>(~(arg_0.x << (global1[_wgslsmith_index_u32(55527u, 22u)] % 32u)), u_input.a.x | arg_0.x, 2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u | global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 22u)], ~global1[_wgslsmith_index_u32(0u, 22u)]), 28u)])));
    let var_2 = vec3<u32>(~46756u, 32114u, global1[_wgslsmith_index_u32(0u, 22u)]);
    return var_1.b.d.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(reverseBits(332i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-861f, 1080f, 1367f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1212f - -1000f), 1057f)), vec3<f32>(-363f, _wgslsmith_f_op_f32(func_3(vec2<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 9u)], 28u)], 1i))), _wgslsmith_f_op_f32(round(-450f))))), vec4<bool>(!(!any(vec3<bool>(true, true, true))), true & (-45107i == global2[_wgslsmith_index_u32(~4294967295u, 28u)]), false, !all(vec4<bool>(true, true, true, true))), vec2<f32>(992f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1343f * _wgslsmith_f_op_f32(f32(-1f) * -258f)) * 1f)));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 9u)], 20916u, 4294967295u), vec3<u32>(7734u, global3[_wgslsmith_index_u32(23204u, 9u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2984u, 9u)], 22u)], 22u)], 9u)])) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(30076u, 62181u, 0u, global1[_wgslsmith_index_u32(32984u, 22u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(25996u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], 4294967295u)), ~8708u, global1[_wgslsmith_index_u32(4294967295u, 22u)]) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, 5413u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 9u)], 9u)]), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 0u, 1u)), reverseBits(vec3<u32>(102049u, global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)]))) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34910u, 22u)], 9u)], 9u)], 23056u, 1u), vec3<u32>(0u, global1[_wgslsmith_index_u32(59592u, 22u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27393u, 22u)], 9u)]), vec3<u32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59161u, 22u)], 22u)], 9u)], 18947u, global3[_wgslsmith_index_u32(0u, 9u)])), ~vec3<u32>(global3[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25266u, 22u)], 22u)], 22u)]), 9u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)] ^ 1u, 9u)], global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(3148u, 9u)], 9u)]));
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(331f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(350f * 983f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(330f, _wgslsmith_f_op_f32(func_3(vec2<i32>(-13744i, var_0.a))))) - _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) - _wgslsmith_f_op_f32(min(667f, -265f))), var_0.b.x)), var_0.d.x));
    var_0 = Struct_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + -714f)), 220f, -964f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.x + var_0.b.x), _wgslsmith_f_op_f32(sign(436f)), var_3.x))), var_0.c, _wgslsmith_f_op_vec2_f32(select(var_3.yz, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) - vec2<f32>(-900f, -2075f))))), (var_0.c.x && var_0.c.x) | true)));
    return -444f;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global3 = array<u32, 9>();
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(928f, var_0)) + vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 * var_0)))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = vec2<bool>(-405f < var_1.x, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(8550u, 28u)], select(_wgslsmith_add_i32(8787i, -1i), select(global2[_wgslsmith_index_u32(4294967295u, 28u)], arg_0, true), any(vec4<bool>(false, false, false, true)))) < 22138i);
    return Struct_3(select(_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(global3[_wgslsmith_index_u32(30912u, 9u)], arg_1, 0u)), reverseBits(vec3<u32>(arg_1, global1[_wgslsmith_index_u32(4294967295u, 22u)], 104455u)) | vec3<u32>(arg_1, 3603u, 4294967295u)), max(_wgslsmith_mod_vec3_u32(~vec3<u32>(5740u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44027u, 22u)], 22u)]), countOneBits(vec3<u32>(1u, 6859u, 0u))), _wgslsmith_add_vec3_u32(select(vec3<u32>(arg_1, arg_1, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<bool>(var_3.x, var_3.x, var_3.x)), vec3<u32>(arg_1, 2606u, 0u))), select(select(!vec3<bool>(var_3.x, var_3.x, false), select(vec3<bool>(var_3.x, false, false), vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(false, false, var_3.x)), !vec3<bool>(var_3.x, true, false)), !(!vec3<bool>(false, var_3.x, var_3.x)), !(-434f > var_1.x))), Struct_2(-595i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(313f, 1192f, var_1.x) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_1.x, -272f), vec3<f32>(var_1.x, var_0, var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, 743f, var_1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1949f, var_0, -290f) * vec3<f32>(var_0, var_0, 1452f)))), !(!select(vec4<bool>(false, true, true, var_3.x), vec4<bool>(false, true, true, var_3.x), vec4<bool>(var_3.x, false, var_3.x, var_3.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(max(159f, -1757f))))), Struct_2(-2147483647i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, var_0, -587f))))), vec3<f32>(-176f, 388f, -1874f), select(select(vec3<bool>(true, false, true), vec3<bool>(var_3.x, var_3.x, false), true), select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, false, false), vec3<bool>(true, true, var_3.x)), select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(true, false, true), var_3.x)))), vec4<bool>(any(!vec2<bool>(true, var_3.x)), true, var_3.x, var_3.x), var_1), Struct_1(reverseBits(abs(firstTrailingBit(vec4<i32>(arg_0, -10820i, arg_0, -1i))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: bool) -> Struct_3 {
    var var_0 = func_1(-reverseBits(_wgslsmith_mult_i32(arg_1.b.a | -36076i, max(u_input.a.x, global2[_wgslsmith_index_u32(57640u, 28u)]))), 4294967295u, min(_wgslsmith_sub_vec2_i32(~func_1(arg_1.c.a, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 9u)], 22u)], vec2<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.a.x, 9u)], 9u)], 22u)], 28u)], 0i), Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56488u, 22u)], 22u)], 28u)], arg_1.c.a, 16677i, 2147483647i))).d.a.wx, countOneBits(-arg_1.d.a.yx)), ~(-u_input.a)), Struct_1(_wgslsmith_mod_vec4_i32(arg_1.d.a, ~vec4<i32>(global2[_wgslsmith_index_u32(27609u, 28u)], 0i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 28u)], u_input.a.x))));
    var var_1 = ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(select(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1404u, global3[_wgslsmith_index_u32(arg_1.a.x, 9u)], var_0.a.x), var_0.a.x), var_0.a.x, var_0.b.d.x <= _wgslsmith_div_f32(853f, arg_1.b.d.x)), var_0.a.x), 9u)], 9u)], 9u)];
    var var_2 = all(arg_1.b.c.wzy);
    global3 = array<u32, 9>();
    var_1 = _wgslsmith_clamp_u32(49033u, ~arg_1.a.x, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(~0u, ~var_0.a.x), ~firstLeadingBit(17817u), 6039u), 9u)]));
    return arg_1;
}

fn func_5(arg_0: Struct_3) -> f32 {
    let var_0 = arg_0.b;
    global0 = func_1(func_4(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 27065u, 4294967295u, arg_0.a.x), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33500u, 22u)], 9u)], 9u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], arg_0.a.x) | vec4<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(70433u, 9u)], 22u)], 3656u, arg_0.a.x, 62772u)), 12u)], func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.d.a.xy, vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], 0i), vec2<i32>(u_input.a.x, -2147483647i)), u_input.a >> (arg_0.a.xx % vec2<u32>(32u))), 1u, select(func_1(var_0.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49973u, 22u)], 22u)], vec2<i32>(var_0.a, -2147483647i), arg_0.d).d.a.xz, select(arg_0.d.a.wz, vec2<i32>(global2[_wgslsmith_index_u32(1878u, 28u)], var_0.a), true), var_0.c.x), func_1(~1i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~arg_0.a.x, 22u)], 9u)], -vec2<i32>(arg_0.d.a.x, arg_0.d.a.x), Struct_1(arg_0.d.a)).d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2138f, var_0.b.x), vec2<f32>(arg_0.b.d.x, var_0.b.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, arg_0.c.d.x))), select(!(arg_0.b.c.x || true), true, func_1(-26901i, ~global3[_wgslsmith_index_u32(1u, 9u)], -vec2<i32>(global2[_wgslsmith_index_u32(81911u, 28u)], var_0.a), func_1(0i, arg_0.a.x, vec2<i32>(u_input.a.x, -40363i), arg_0.d).d).c.c.x)).d.a.x, func_4(Struct_4(false, _wgslsmith_f_op_f32(-arg_0.c.b.x)), func_1(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(61675u, 28u)], ~2147483647i, -10267i), 4294967295u, vec2<i32>(u_input.a.x, ~(-44411i)), Struct_1(arg_0.d.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-626f, arg_0.c.b.x), arg_0.b.b.yx)), !any(!var_0.c.yx)).a.x, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(max(vec2<i32>(arg_0.d.a.x, -27670i) >> (vec2<u32>(5008u, 47509u) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 28u)])), -max(arg_0.d.a.yx, u_input.a)), arg_0.d.a.yx), func_1(u_input.a.x | func_4(Struct_4(false, arg_0.b.b.x), arg_0, _wgslsmith_f_op_vec2_f32(min(arg_0.b.d, arg_0.b.b.zx)), any(vec3<bool>(arg_0.b.c.x, arg_0.b.c.x, arg_0.c.c.x))).d.a.x, _wgslsmith_clamp_u32(abs(global3[_wgslsmith_index_u32(43541u, 9u)]), arg_0.a.x, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(37081u, 22u)], 4294967295u)) >> (~firstLeadingBit(global3[_wgslsmith_index_u32(75650u, 9u)]) % 32u), arg_0.d.a.zw, arg_0.d).d).c.c.x;
    let var_1 = true;
    global0 = arg_0.a.x < abs(12380u);
    var var_2 = arg_0;
    return func_1(func_4(Struct_4(func_1(-var_2.c.a, _wgslsmith_mult_u32(4294967295u, 1u), arg_0.d.a.zz, func_4(Struct_4(true, var_2.b.d.x), arg_0, vec2<f32>(arg_0.b.d.x, var_2.b.b.x), false).d).b.c.x, 685f), func_4(global4[_wgslsmith_index_u32(40746u, 12u)], func_1(2147483647i, _wgslsmith_mod_u32(var_2.a.x, 0u), arg_0.d.a.zz & vec2<i32>(var_2.b.a, 2147483647i), Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.a.x, 9u)], 22u)], 28u)], 1i, var_2.d.a.x, arg_0.b.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.d)), (global1[_wgslsmith_index_u32(var_2.a.x, 22u)] >= 91953u) & func_1(global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], arg_0.a.x, vec2<i32>(var_0.a, var_0.a), Struct_1(arg_0.d.a)).c.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.b.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 174f) + var_0.b.zx), false))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(47745u, 22u)], arg_0.a.x, global3[_wgslsmith_index_u32(0u, 9u)], 54540u), vec4<u32>(arg_0.a.x, 4294967295u, 64339u, 23672u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 22u)], 0u, 24761u, 1110u)), ~vec4<u32>(arg_0.a.x, var_2.a.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a.x, 9u)], 22u)], 9u)], global1[_wgslsmith_index_u32(5264u, 22u)])) <= 65286u).b.a, abs(var_2.a.x), vec2<i32>(0i, arg_0.b.a), func_4(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(3907u, var_2.a.x), func_1(-734i, arg_0.a.x, u_input.a, arg_0.d).a.xz), 12u)], arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.zy), _wgslsmith_div_vec2_f32(arg_0.c.b.yx, vec2<f32>(503f, arg_0.c.d.x))), var_2.c.c.x).d).b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(func_4(Struct_4(true, 1392f), func_1(8484i, 4294967295u, u_input.a, Struct_1(vec4<i32>(-29408i, u_input.a.x, -37309i, global2[_wgslsmith_index_u32(39051u, 28u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(409f, 624f)), select(true, false, true))))))));
    let var_1 = select(func_1(max(u_input.a.x, 0i) & ~select(-2147483647i, u_input.a.x, false), 1u, vec2<i32>(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 22u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 4294967295u)), 28u)], -1i), func_1(_wgslsmith_div_i32(2147483647i, 26338i) | _wgslsmith_div_i32(global2[_wgslsmith_index_u32(78073u, 28u)], -42288i), 0u, u_input.a, Struct_1(min(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 28u)], -40909i, 777i), vec4<i32>(global2[_wgslsmith_index_u32(16611u, 28u)], -1i, -2147483647i, 21596i)))).d).b.c, !vec4<bool>(all(vec3<bool>(false, false, true)), true, _wgslsmith_f_op_f32(508f + var_0) <= var_0, true), vec4<bool>(true && any(vec4<bool>(true, false, true, true)), true, !func_4(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_4(global4[_wgslsmith_index_u32(53061u, 12u)], Struct_3(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(90939u, 22u)], 1u), Struct_2(2147483647i, vec3<f32>(1106f, 419f, -1286f), vec4<bool>(true, false, true, false), vec2<f32>(var_0, var_0)), Struct_2(global2[_wgslsmith_index_u32(62501u, 28u)], vec3<f32>(var_0, var_0, var_0), vec4<bool>(true, false, true, true), vec2<f32>(var_0, var_0)), Struct_1(vec4<i32>(u_input.a.x, 0i, 0i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 9u)], 28u)]))), vec2<f32>(-902f, -165f), true).a.x, 9u)], 12u)], Struct_3(vec3<u32>(0u, 5583u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43677u, 22u)], 9u)], 9u)]), Struct_2(-3886i, vec3<f32>(2243f, -331f, 2003f), vec4<bool>(false, false, false, true), vec2<f32>(var_0, var_0)), Struct_2(28951i, vec3<f32>(-446f, 1000f, -1101f), vec4<bool>(true, false, false, true), vec2<f32>(942f, var_0)), Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53217u, 9u)], 22u)], 9u)], 22u)], 22u)], 28u)], global2[_wgslsmith_index_u32(15418u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 9u)], 28u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), true).b.c.x, false));
    var var_2 = func_4(Struct_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1304f)))), func_4(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 12u)], Struct_3(~vec3<u32>(41500u, 1u, 8261u), Struct_2(-3623i, vec3<f32>(-529f, var_0, var_0), var_1, vec2<f32>(-213f, var_0)), Struct_2(-6598i, vec3<f32>(1295f, -515f, var_0), vec4<bool>(var_1.x, true, false, var_1.x), vec2<f32>(778f, var_0)), Struct_1(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 28u)], 0i, -11075i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-277f, var_0)), true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(438f, _wgslsmith_f_op_f32(-var_0)))), !((var_1.x || var_1.x) | false)).a.x | 41496u;
    global1 = array<u32, 22>();
    var var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(global3[_wgslsmith_index_u32(10606u, 9u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64952u, 22u)], 9u)], global3[_wgslsmith_index_u32(32217u, 9u)], 0u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 1u, 4294967295u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63402u, 22u)], 9u)]), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), max(~vec4<u32>(global1[_wgslsmith_index_u32(64005u, 22u)], global1[_wgslsmith_index_u32(14847u, 22u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 22u)], 22u)]), vec4<u32>(0u, 1u, 43352u, global1[_wgslsmith_index_u32(1u, 22u)])), vec4<u32>(~4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(14736u, 22u)]), 9u)], 51148u, 39986u)) | ~min(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 4294967295u, 4294967295u, 0u), firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(37005u, 22u)], 4294967295u, 4294967295u))));
}

