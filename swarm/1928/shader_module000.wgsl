struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-624f, 2147483647i, Struct_2(vec2<f32>(422f, -1000f), 9270i, vec2<i32>(-55403i, 0i)));

var<private> global1: u32 = 1516u;

var<private> global2: array<bool, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<f32>) -> vec4<f32> {
    global0 = Struct_3(arg_2.x, _wgslsmith_clamp_i32(-27337i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.c.b | 10875i, ~u_input.c.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -2147483647i, u_input.c.x, 23113i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 41467i, 51082i, u_input.b.x), vec4<i32>(u_input.b.x, arg_0.c.c.x, u_input.b.x, -2147483647i), vec4<i32>(-2147483647i, u_input.c.x, -17983i, global0.b))), ~(~global0.c.c.x)), arg_0.b), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-308f, _wgslsmith_f_op_f32(floor(global0.a))) + arg_2.xz), ~global0.b, ((vec2<i32>(arg_0.b, -1i) ^ arg_0.c.c) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) | arg_0.c.c));
    global1 = firstTrailingBit(u_input.a.x);
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1.xw, vec2<f32>(-600f, -570f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, 617f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, global0.a), vec2<f32>(-649f, 1389f), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], true))), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)])))))), i32(-1i) * -5761i, -reverseBits(~(~arg_0.c.c)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-840f, 147f, 514f) + arg_2)))), arg_2, vec3<bool>(true, !global2[_wgslsmith_index_u32(1u | u_input.a.x, 31u)], ~arg_0.c.b == 1i)))));
    global2 = array<bool, 31>();
    return vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))))), -418f, _wgslsmith_f_op_f32(-arg_1.x), -1000f);
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.a)), 1i, vec2<i32>(0i, firstTrailingBit(_wgslsmith_dot_vec2_i32(global0.c.c, firstTrailingBit(global0.c.c)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1365f, 335f, var_0.a.x, var_0.a.x)) + _wgslsmith_f_op_vec4_f32(func_3(Struct_3(-467f, 51302i, global0.c), vec4<f32>(global0.a, global0.c.a.x, 509f, var_0.a.x), vec3<f32>(1000f, -1603f, -607f)))), vec4<f32>(-2345f, var_0.a.x, _wgslsmith_f_op_f32(abs(-586f)), global0.a), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)], true, false), select(vec4<bool>(true, global2[_wgslsmith_index_u32(41657u, 31u)], true, false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(25580u, 31u)]), false)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, global0.c.a.x, global0.c.a.x, var_0.a.x)))))), _wgslsmith_mult_u32(firstTrailingBit(~u_input.a.x), 0u) & (u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(956f, 885f, global0.a, global0.c.a.x), vec4<f32>(-1104f, var_0.a.x, 752f, -2697f), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-495f, var_0.a.x, var_0.a.x, 2373f), vec4<f32>(1000f, -563f, 304f, 1597f)))))))));
    let var_2 = u_input.c.x;
    let var_3 = arg_0;
    global0 = Struct_3(1124f, var_2, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a.yw, var_1.a.xw) * _wgslsmith_f_op_vec2_f32(step(var_1.a.xy, vec2<f32>(global0.a, -582f))))), select(arg_1, arg_1, false), u_input.b.xx));
    return u_input.a;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: f32) -> Struct_4 {
    global1 = _wgslsmith_div_u32(35417u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, arg_1.a.x)), u_input.a.x), arg_2.x));
    let var_0 = ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, arg_1.c.x) >> (22895u % 32u), 4294967295u), ~_wgslsmith_div_u32(firstLeadingBit(0u), 1u), 43685u, 43618u);
    var var_1 = !vec4<bool>(false, any(select(vec2<bool>(global2[_wgslsmith_index_u32(36769u, 31u)], true), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], true), true)), all(!select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(arg_1.c.x, 31u)], global2[_wgslsmith_index_u32(arg_1.a.x, 31u)]), global2[_wgslsmith_index_u32(66716u, 31u)])), select(!any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], true, global2[_wgslsmith_index_u32(arg_1.b.b, 31u)])), _wgslsmith_f_op_f32(global0.c.a.x * arg_1.b.a.x) > -1000f, ~u_input.a.x <= 126603u));
    var var_2 = arg_1;
    var var_3 = !var_1.x;
    return Struct_4(firstLeadingBit(var_2.c), var_2.b, _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 0u), vec4<u32>(1u, 20950u, arg_1.c.x, 0u)), arg_1.c), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 10053u, 54723u, 36762u), vec4<u32>(11545u, 30773u, u_input.a.x, 0u))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = u_input.a.zwx;
    global1 = u_input.a.x << (var_0.x % 32u);
    let var_1 = func_4(-30202i, Struct_4(func_2(~select(u_input.b.x, arg_0.c.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), ~global0.c.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1207f, arg_0.a, global0.c.a.x, arg_0.a))), 22483u, vec4<f32>(arg_0.c.a.x, arg_0.a, global0.c.a.x, _wgslsmith_div_f32(1639f, 676f))), ~(u_input.a >> (max(u_input.a, u_input.a) % vec4<u32>(32u)))), vec2<u32>(~u_input.a.x, u_input.a.x), arg_0.a);
    let var_2 = vec2<i32>(firstLeadingBit(-(~arg_0.c.c.x)) >> (~(~(~var_1.b.b)) % 32u), u_input.b.x);
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.a.x << (4294967295u % 32u), var_0.x), 9150u) | abs(max(0u >> (0u % 32u), max(var_0.x, var_1.c.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, var_1.a.x), countOneBits(0u) << (var_1.c.x % 32u), _wgslsmith_clamp_u32(1u, var_0.x, ~62934u)), u_input.a.xzw), var_0.x, 3705u);
    return _wgslsmith_div_u32(min(~firstTrailingBit(func_4(-6064i, var_1, vec2<u32>(1u, var_3.x), 1000f).b.b), 41676u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(46526u, var_0.x, abs(_wgslsmith_sub_u32(4294967295u, u_input.a.x))), 2969u));
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.a.x) * 431f))))), 19557i, Struct_2(vec2<f32>(394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-718f)) * _wgslsmith_f_op_f32(trunc(global0.c.a.x)))), reverseBits(-global0.b), _wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(-28076i, u_input.b.x))), abs(vec2<i32>(arg_3.b, arg_3.b) | vec2<i32>(-2147483647i, 0i)))));
    global2 = array<bool, 31>();
    var var_0 = i32(-1i) * -(-(~u_input.b.x) >> (1u % 32u));
    var var_1 = u_input.c.x;
    var_0 = u_input.b.x;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global0.c.b <= u_input.c.x, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x), 31u)]);
    var var_1 = !(-1227i == u_input.c.x);
    var var_2 = func_5(select(vec3<u32>(~abs(u_input.a.x), 0u, 11288u), vec3<u32>(select(4294967295u, u_input.a.x, false), func_1(Struct_3(1729f, 1i, global0.c)), firstTrailingBit(63949u)) & (~vec3<u32>(u_input.a.x, u_input.a.x, 0u) ^ ~u_input.a.yzz), select(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(false, var_0.x, var_0.x), false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(~34609u, 31u)]), any(vec3<bool>(true, var_0.x, var_0.x)) | (global0.c.a.x == global0.a))), ~4294967295u, func_4(2147483647i, Struct_4(max(select(u_input.a, u_input.a, global2[_wgslsmith_index_u32(4294967295u, 31u)]), u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, 1000f, global0.a, -1000f)), 36377u, vec4<f32>(878f, 1000f, -1213f, global0.a)), ~vec4<u32>(39873u, 0u, u_input.a.x, 5583u)), ~select(_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(51941u, u_input.a.x)), u_input.a.yy, select(var_0.xx, vec2<bool>(false, false), vec2<bool>(var_0.x, true))), 719f), Struct_3(global0.c.a.x, min(~_wgslsmith_clamp_i32(-1i, u_input.b.x, u_input.c.x), max(2147483647i & global0.c.c.x, 1i)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.a - vec2<f32>(-1795f, -351f)) * vec2<f32>(global0.a, global0.a)), _wgslsmith_sub_i32(~1i, max(8356i, 1i)), vec2<i32>(u_input.b.x, ~34383i))));
    var_0 = select(!select(select(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 31u)]), !vec3<bool>(var_0.x, false, false), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(24180u, 31u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)], var_0.x), vec3<bool>(true, true, var_0.x))), !vec3<bool>(true, true, var_0.x), all(var_0.zy)), !vec3<bool>(!global2[_wgslsmith_index_u32(~u_input.a.x, 31u)], true, all(select(vec2<bool>(var_0.x, var_0.x), var_0.zx, vec2<bool>(global2[_wgslsmith_index_u32(1u, 31u)], false)))), select(!vec3<bool>(any(vec4<bool>(false, var_0.x, false, false)), global2[_wgslsmith_index_u32(select(u_input.a.x, 4167u, var_0.x), 31u)], true | var_0.x), select(vec3<bool>(true, var_2.a == -189f, true), !select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], var_0.x, true), true), var_0.x & global2[_wgslsmith_index_u32(~1221u, 31u)]), select(vec3<bool>(true, true, true), vec3<bool>(true & var_0.x, true, all(vec4<bool>(false, var_0.x, true, global2[_wgslsmith_index_u32(4294967295u, 31u)]))), select(!vec3<bool>(true, var_0.x, false), vec3<bool>(global2[_wgslsmith_index_u32(38722u, 31u)], var_0.x, false), global0.c.b == u_input.b.x))));
    global1 = 38483u;
    var var_3 = Struct_2(vec2<f32>(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1222f)), global0.b, ~_wgslsmith_sub_vec2_i32(var_2.c.c, abs(var_2.c.c)));
    let var_4 = _wgslsmith_f_op_f32(max(global0.c.a.x, _wgslsmith_f_op_f32(-var_3.a.x)));
    var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.a.x)), 191f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - 1351f)), -1000f)), -7997i, reverseBits(vec2<i32>(var_3.b, max(-5200i, -45541i))) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~17743u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x - var_4) + _wgslsmith_f_op_f32(ceil(global0.a))) - global0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_2.c.a.x)) - -1100f)), _wgslsmith_sub_i32(firstTrailingBit(~global0.c.c.x), 30349i), ~(-var_3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.x, func_4(-2868i, Struct_4(vec4<u32>(20499u, u_input.a.x, u_input.a.x, 5425u), Struct_1(vec4<f32>(var_2.a, var_2.a, 137f, var_2.c.a.x), 0u, vec4<f32>(var_4, -476f, -1124f, 1387f)), vec4<u32>(7136u, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, u_input.a.x), 495f).b.c.x)) + var_2.c.a.x));
}

