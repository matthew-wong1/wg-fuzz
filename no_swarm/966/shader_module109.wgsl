struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(24652i, 10737i);

var<private> global1: array<i32, 16> = array<i32, 16>(-49717i, 33235i, 0i, 1i, i32(-2147483648), i32(-2147483648), -65217i, 0i, 1i, i32(-2147483648), -60332i, -1i, 440i, -51366i, -40267i, 7258i);

var<private> global2: array<Struct_2, 12>;

var<private> global3: Struct_2 = Struct_2(Struct_1(39317u, -1340f, 0u, vec3<i32>(22034i, 1i, -1i), vec4<u32>(46596u, 1u, 0u, 0u)), vec4<u32>(43257u, 32364u, 4294967295u, 0u), Struct_1(0u, 788f, 4294967295u, vec3<i32>(2147483647i, 2147483647i, 23492i), vec4<u32>(49410u, 0u, 0u, 11534u)), Struct_1(43898u, 1289f, 14058u, vec3<i32>(-1i, -8620i, 0i), vec4<u32>(0u, 1u, 104261u, 69698u)), vec4<i32>(-921i, 2147483647i, 19468i, 2147483647i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    let var_0 = false;
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 4294967295u, min(min(u_input.a.x, ~arg_0.c) & ~63659u, ~(~(~10123u)))), 12u)];
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(max(global0.x, arg_0.d.x), 1i), -1i)), ~_wgslsmith_dot_vec3_i32(~min(global3.e.wxy, global3.d.d), arg_0.d));
    global1 = array<i32, 16>();
    var var_2 = select(select(!select(vec2<bool>(arg_1, true), select(vec2<bool>(false, false), vec2<bool>(false, var_0), var_0), vec2<bool>(false, var_0)), vec2<bool>(var_0, !any(vec4<bool>(true, arg_1, false, false))), select(select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(var_0, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true), select(var_0, any(vec2<bool>(true, true)), !var_0))), select(vec2<bool>(arg_1, true), select(select(vec2<bool>(arg_1, var_0), vec2<bool>(true, true), !vec2<bool>(var_0, true)), !select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), arg_1), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(var_0, true), vec2<bool>(false, arg_1), vec2<bool>(var_0, true)), select(vec2<bool>(arg_1, false), vec2<bool>(true, true), false))), vec2<bool>(all(vec2<bool>(true, false)), (arg_0.b != 1000f) & true)), select(vec2<bool>(!var_0, any(vec2<bool>(true, true)) || var_0), select(select(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), vec2<bool>(arg_1, false)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1), any(vec4<bool>(arg_1, false, true, true))), vec2<bool>(true, true), select(vec2<bool>(false, arg_1), !vec2<bool>(arg_1, var_0), vec2<bool>(true, false))), select(vec2<bool>(!var_0, true), select(!vec2<bool>(var_0, false), vec2<bool>(true, arg_1), arg_0.b != global3.d.b), _wgslsmith_f_op_f32(f32(-1f) * -461f) > _wgslsmith_f_op_f32(-global3.c.b))));
    return -((vec2<i32>(u_input.e & var_1, -1360i) | ~global3.c.d.zx) & -u_input.b.zy);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global0 = vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-50822i, ~0i) >> (~u_input.a.xx % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(~vec2<i32>(global0.x, u_input.e) ^ abs(vec2<i32>(u_input.b.x, -10009i)), func_3(global3.a, true))));
    let var_0 = ~(select(4294967295u, 64268u, all(vec3<bool>(false, true, true))) >> (arg_0.x % 32u));
    var var_1 = ~global3.c.e.zy;
    var_1 = vec2<u32>(_wgslsmith_mod_u32(abs(_wgslsmith_sub_u32(arg_0.x, arg_0.x) | min(arg_0.x, var_0)), ~var_1.x), u_input.d);
    let var_2 = vec2<bool>((~firstLeadingBit(global3.d.d.x) << ((var_1.x >> ((0u >> (var_1.x % 32u)) % 32u)) % 32u)) != global0.x, false);
    return Struct_2(global3.c, global3.b, global3.a, Struct_1(~abs(arg_0.x) >> (~(~16064u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 261f)))), _wgslsmith_add_u32(46365u, max(global3.d.e.x, _wgslsmith_clamp_u32(var_1.x, 69454u, 28948u))), vec3<i32>(_wgslsmith_mult_i32(40313i, 1027i), ~global0.x, -u_input.e) & min(vec3<i32>(-1i, global3.a.d.x, u_input.e), firstLeadingBit(u_input.b)), ~u_input.a), global3.e);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_div_i32(-1i, arg_1.d.x);
    let var_1 = func_2(_wgslsmith_div_vec4_u32(~select(_wgslsmith_sub_vec4_u32(arg_1.e, global3.c.e), vec4<u32>(u_input.d, 6913u, 81402u, 38638u), vec4<bool>(true, true, false, true)), ~vec4<u32>(arg_1.e.x, select(21812u, 0u, false), ~1u, u_input.c.x)));
    global3 = func_2((~(u_input.a ^ u_input.a) >> (_wgslsmith_add_vec4_u32(var_1.c.e, reverseBits(u_input.a)) % vec4<u32>(32u))) ^ select(var_1.b, vec4<u32>(33649u, _wgslsmith_mult_u32(1u, 4294967295u), var_1.c.e.x << (4294967295u % 32u), firstTrailingBit(arg_1.e.x)), select(!vec4<bool>(true, arg_2.x, false, arg_2.x), !vec4<bool>(false, true, arg_2.x, false), select(vec4<bool>(true, true, true, arg_2.x), vec4<bool>(true, true, true, arg_2.x), arg_2.x))));
    var var_2 = var_1;
    var var_3 = !select(arg_2.x, arg_2.x, all(!select(vec4<bool>(arg_2.x, true, arg_2.x, true), vec4<bool>(false, arg_2.x, true, true), vec4<bool>(arg_2.x, true, arg_2.x, false))));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_2(func_2(global3.d.e).d, ~countOneBits(vec4<u32>(global3.d.a, ~arg_0.e.x, ~61646u, u_input.c.x)), func_2(max(select(~vec4<u32>(7079u, u_input.c.x, arg_0.c, arg_0.a), vec4<u32>(82136u, 1841u, u_input.c.x, arg_1.b.x) ^ vec4<u32>(global3.c.c, arg_1.b.x, u_input.c.x, global3.a.c), any(vec4<bool>(false, false, true, true))), global3.c.e)).c, arg_0, firstLeadingBit(reverseBits(vec4<i32>(_wgslsmith_add_i32(29729i, -6825i), global1[_wgslsmith_index_u32(global3.d.e.x ^ 43478u, 16u)], global3.c.d.x & 1253i, select(global3.d.d.x, -11898i, true)))));
    let var_1 = !select(vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true));
    let var_2 = select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, true), !vec3<bool>(false, var_1.x, false), var_1.x && var_1.x)), var_1.x);
    global0 = vec2<i32>(_wgslsmith_dot_vec4_i32(~arg_1.e, vec4<i32>(arg_0.d.x, _wgslsmith_div_i32(-15871i, ~(-37286i)), -1i, ~(global1[_wgslsmith_index_u32(48300u, 16u)] & 12796i))), max(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec4_i32(arg_1.e, global3.e)), abs(1i)), firstLeadingBit(_wgslsmith_mod_i32(i32(-1i) * -1i, -2147483647i))));
    var var_3 = var_2;
    return vec3<bool>(!(!((u_input.c.x | u_input.a.x) > arg_1.a.a)), all(!(!(!vec4<bool>(var_3.x, var_3.x, true, var_2.x)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(global3.e.yzx) & u_input.b;
    var var_1 = !func_4(Struct_1(u_input.c.x, _wgslsmith_div_f32(global3.a.b, global3.d.b), 86527u, vec3<i32>(global1[_wgslsmith_index_u32(37895u, 16u)], u_input.e, _wgslsmith_add_i32(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 16u)])), u_input.a), Struct_2(global3.d, ~reverseBits(vec4<u32>(u_input.d, 4294967295u, 1u, 10678u)), global3.a, Struct_1(~4294967295u, _wgslsmith_f_op_f32(1686f + global3.a.b), func_1(vec4<f32>(770f, global3.d.b, global3.c.b, 602f), global3.a, vec3<bool>(false, true, false)), _wgslsmith_mod_vec3_i32(global3.d.d, vec3<i32>(u_input.e, global1[_wgslsmith_index_u32(0u, 16u)], 2147483647i)), u_input.a), vec4<i32>(global3.e.x, -1i, -64515i, 18325i) & global3.e), 63956u);
    var_0 = ~global3.c.d >> (vec3<u32>(4294967295u, _wgslsmith_add_u32(reverseBits(global3.b.x), u_input.d), ~(~_wgslsmith_dot_vec2_u32(u_input.c, u_input.c))) % vec3<u32>(32u));
    var var_2 = func_2(_wgslsmith_clamp_vec4_u32(~u_input.a, global3.d.e, vec4<u32>(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 20496u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.yzy, vec3<u32>(global3.c.a, u_input.c.x, 1u)), ~u_input.c.x, global3.d.e.x), _wgslsmith_sub_u32(~u_input.d, 0u))));
    global0 = ~(-select(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 2147483647i), vec2<i32>(26606i, 61228i)), u_input.b.yy, var_1.xz)) | _wgslsmith_mod_vec2_i32(var_0.yx, var_0.yy);
    var_1 = select(select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, var_1.x, var_1.x), false), vec3<bool>(var_1.x, true, true), !vec3<bool>(var_1.x, var_1.x, var_1.x)), !(!vec3<bool>(var_1.x, var_1.x, true)), vec3<bool>(var_1.x || (-2147483647i == var_0.x), true, true)), select(!vec3<bool>(all(vec4<bool>(var_1.x, false, true, var_1.x)), true, 373f >= global3.a.b), !select(select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, var_1.x, var_1.x), false), !vec3<bool>(true, true, var_1.x), var_1.x), !all(vec4<bool>(var_1.x, var_1.x, var_1.x, true))), vec3<bool>(any(select(!vec4<bool>(var_1.x, true, var_1.x, true), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, true, var_1.x, var_1.x), var_1.x), true)), -var_2.d.d.x == -36661i, false));
    var var_3 = global3.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(func_2(abs(vec4<u32>(4349u, 77235u, 66290u, u_input.a.x))).d.b)), _wgslsmith_div_vec4_i32(abs(firstLeadingBit(vec4<i32>(u_input.b.x, var_2.a.d.x, -108645i, var_2.d.d.x))), vec4<i32>(-55736i | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_2.a.d.x, global0.x), u_input.b), var_2.d.d.x, global3.c.d.x, var_2.e.x)), var_0.x, 53846u, vec3<i32>(var_2.d.d.x, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], -40341i, -51098i, -44535i), var_2.e) ^ var_0.x), var_2.a.d.x));
}

