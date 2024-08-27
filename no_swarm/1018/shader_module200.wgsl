struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: Struct_4,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -16035i;

var<private> global1: vec4<f32> = vec4<f32>(-1642f, -1000f, -961f, 1116f);

var<private> global2: vec3<i32>;

var<private> global3: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(61596u, 0u, 33007u, 1u), vec4<u32>(0u, 1u, 37859u, 6513u), vec4<u32>(37075u, 16534u, 50271u, 1u), vec4<u32>(87300u, 18122u, 1u, 81672u), vec4<u32>(14954u, 4294967295u, 44245u, 22889u), vec4<u32>(41651u, 25218u, 65281u, 1u), vec4<u32>(53866u, 4294967295u, 0u, 1u), vec4<u32>(23057u, 44832u, 0u, 0u), vec4<u32>(10954u, 4294967295u, 0u, 44545u), vec4<u32>(18488u, 1u, 4294967295u, 2549u), vec4<u32>(1u, 79035u, 42390u, 37466u), vec4<u32>(35870u, 4294967295u, 4294967295u, 3870u));

var<private> global4: Struct_5 = Struct_5(vec2<i32>(-1i, 808i), Struct_4(4294967295u, true, vec3<f32>(225f, -871f, 949f), vec4<bool>(true, false, true, true), vec3<u32>(0u, 1u, 4294967295u)), Struct_4(0u, false, vec3<f32>(2173f, -230f, 788f), vec4<bool>(true, true, true, false), vec3<u32>(39141u, 72014u, 4294967295u)), Struct_4(0u, false, vec3<f32>(-1935f, 1059f, 1297f), vec4<bool>(true, false, true, false), vec3<u32>(1u, 4294967295u, 1u)), 9654u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(global4.b.c.x)), _wgslsmith_f_op_f32(select(global4.c.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global4.b.c.x)), global1.x)), -120f < _wgslsmith_f_op_f32(sign(global4.d.c.x)))), global1.x, global1.x)));
    return global4.b.e.zy;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_5 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(sign(-333f)) >= _wgslsmith_f_op_f32(-global4.c.c.x), true, all(global4.d.d.yyz));
    var var_1 = ~select(_wgslsmith_mod_u32(global4.d.a, global4.c.a), 4475u, !(!any(global4.c.d.xxy)));
    var var_2 = Struct_2(abs(0i), ~global4.b.e.xx, u_input.a.zw, Struct_1(~u_input.a.x));
    var_2 = Struct_2(~24405i, ~(var_2.c >> (vec2<u32>(_wgslsmith_div_u32(1u, 53985u), var_2.d.a) % vec2<u32>(32u))), select(select(max(u_input.a.zz, vec2<u32>(4294967295u, 4294967295u)), countOneBits(~vec2<u32>(var_2.c.x, 0u)), var_0.yz), func_3(global4.c.d.wwz, Struct_2(reverseBits(global4.a.x), vec2<u32>(global4.e, 4294967295u), firstLeadingBit(vec2<u32>(var_2.c.x, var_2.c.x)), var_2.d), Struct_3(_wgslsmith_sub_vec2_u32(u_input.a.yw, vec2<u32>(12922u, u_input.a.x))), global3[_wgslsmith_index_u32(1u, 12u)]), select(vec2<bool>(true, true), vec2<bool>(global4.b.b, false), select(select(var_0.zy, var_0.zz, arg_1), select(global4.b.d.zx, var_0.xy, var_0.xx), !var_0.yy))), var_2.d);
    var var_3 = Struct_2(-_wgslsmith_dot_vec3_i32(~(~vec3<i32>(global4.a.x, arg_0.x, 2147483647i)), vec3<i32>(reverseBits(global2.x), arg_0.x, _wgslsmith_add_i32(arg_0.x, 4230i))), u_input.a.yx, abs(u_input.a.zz), var_2.d);
    return Struct_5(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_3.a, 4215i), global2.x | global2.x), firstLeadingBit(vec2<i32>(arg_0.x, -20844i)), min(~vec2<i32>(0i, 0i), arg_0)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0, vec2<i32>(1i, arg_0.x)) >> ((var_3.c ^ vec2<u32>(u_input.a.x, var_3.d.a)) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(global2.x, global4.a.x))), global4.c, Struct_4(~_wgslsmith_dot_vec3_u32(vec3<u32>(19881u, var_2.c.x, var_3.d.a), global4.c.e >> (u_input.a.zyy % vec3<u32>(32u))), !(global4.d.d.x && arg_1) && true, _wgslsmith_f_op_vec3_f32(-global1.xzy), vec4<bool>(all(vec2<bool>(var_0.x, true)), _wgslsmith_f_op_f32(step(809f, global4.b.c.x)) > global1.x, false, ~var_2.a != _wgslsmith_dot_vec3_i32(vec3<i32>(-48149i, 19085i, arg_0.x), vec3<i32>(var_3.a, var_3.a, arg_0.x))), vec3<u32>(firstTrailingBit(countOneBits(0u)), 0u, ~var_3.d.a)), Struct_4(~var_2.c.x, !(any(vec2<bool>(arg_1, true)) | select(var_0.x, global4.b.d.x, global4.c.d.x)), global1.wwy, global4.c.d, firstLeadingBit((u_input.a.yyw >> (u_input.a.ywy % vec3<u32>(32u))) >> (vec3<u32>(0u, var_2.d.a, 4294967295u) % vec3<u32>(32u)))), 1u);
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = global4.c.b;
    let var_1 = select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global1.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-301f))), (_wgslsmith_add_u32(arg_0, 0u) << (arg_0 % 32u)) < ~(~1u)), global4.d.d.wx, arg_1.d.zz);
    var var_2 = 4294967295u;
    global4 = func_2(global2.zz, var_1.x);
    global4 = Struct_5(global2.xx, func_2(~(global2.xx ^ -vec2<i32>(-20996i, 2147483647i)), arg_1.d.x).c, arg_1, func_2(-_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-20424i, -17972i), global2.yy), firstLeadingBit(vec2<i32>(global2.x, global4.a.x))), global4.c.b).b, 1u);
    return Struct_2(_wgslsmith_dot_vec2_i32(~global4.a, vec2<i32>(-2147483647i, ~_wgslsmith_add_i32(global2.x, -49416i))), ~vec2<u32>(~13500u, 67435u), arg_1.e.yz ^ vec2<u32>(global4.b.a, func_2(vec2<i32>(1i, global2.x), -1i < global2.x).e), Struct_1(53144u));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_5 {
    var var_0 = func_2(vec2<i32>(~(arg_0.a & 30156i) >> (u_input.a.x % 32u), 5223i), select(-2147483647i > ~min(-287i, global4.a.x), true, false)).c.d;
    let var_1 = !var_0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-global4.d.c);
    return func_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~func_2(global2.zz, var_0.x).a, countOneBits(global2.xy)), select(vec2<i32>(-16843i >> (0u % 32u), 0i), abs(global2.xx << (vec2<u32>(28370u, arg_1) % vec2<u32>(32u))), !vec2<bool>(var_0.x, var_0.x)), func_2(-(global2.yz | global2.zy), !(global4.c.d.x | global4.d.d.x)).a), any(var_0.xyy));
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    var var_0 = countOneBits(vec4<i32>(2147483647i, ~arg_1.a.x, ~2147483647i, -1i));
    global0 = func_4(func_1(arg_2.a.x, Struct_4(_wgslsmith_add_u32(2733u, arg_1.e), 1i == -global4.a.x, _wgslsmith_f_op_vec3_f32(exp2(global4.b.c)), !func_2(vec2<i32>(arg_1.a.x, arg_0), arg_1.c.b).b.d, vec3<u32>(arg_1.d.e.x, _wgslsmith_add_u32(79265u, 0u), u_input.a.x))), 4294967295u, global1.x, -1i).a.x;
    let var_1 = true;
    global3 = array<vec4<u32>, 12>();
    let var_2 = func_1(firstTrailingBit(_wgslsmith_mult_u32(580u, ~(u_input.a.x | arg_2.a.x))), func_4(func_1(~(~56651u), Struct_4(51870u, arg_2.a.x < 111036u, vec3<f32>(arg_1.b.c.x, global1.x, arg_1.b.c.x), global4.d.d, ~vec3<u32>(30980u, u_input.a.x, 1877u))), ~u_input.a.x, -616f, reverseBits(_wgslsmith_div_i32(~arg_0, arg_1.a.x))).b);
    return func_1(u_input.a.x, arg_1.d).d;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec4<i32> {
    global3 = array<vec4<u32>, 12>();
    let var_0 = vec4<i32>(_wgslsmith_div_i32(-46431i, 0i & global4.a.x), -1i, 0i, func_4(Struct_2(func_4(Struct_2(global2.x, vec2<u32>(u_input.a.x, 27409u), vec2<u32>(7402u, global4.c.e.x), arg_0), 37749u, -1439f, global2.x).a.x, u_input.a.xw ^ global4.c.e.zz, ~global4.d.e.xy, arg_0), func_4(Struct_2(global4.a.x, u_input.a.zw, vec2<u32>(7826u, global4.e), Struct_1(u_input.a.x)), 4294967295u, _wgslsmith_f_op_f32(-1985f * global4.d.c.x), ~0i).b.a, global1.x, firstLeadingBit(i32(-1i) * -1i)).a.x >> (reverseBits(max(~global4.d.a, _wgslsmith_mod_u32(26224u, global4.c.e.x))) % 32u));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(255f, arg_2), global1.x) * _wgslsmith_f_op_f32(-1163f - 2187f)), _wgslsmith_f_op_f32(-181f - _wgslsmith_f_op_f32(ceil(global1.x))), 1853f, global4.c.c.x));
    return vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-22140i, 655i, global4.a.x) ^ var_0.xzw), -(~var_0.zxw))), min(-27217i, 1i), 0i, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -countOneBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(0i, global4.a.x, global4.a.x, 17790i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global2.x, 2147483647i, 3162i), vec4<i32>(-1i, -1i, -46008i, 14649i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.d.c.x))), _wgslsmith_f_op_f32(min(344f, _wgslsmith_f_op_f32(global4.b.c.x * -566f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -290f), 502f)))));
    let var_2 = Struct_3(global4.c.e.zy);
    global3 = array<vec4<u32>, 12>();
    global0 = 9644i;
    global0 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -3559i, 25244i, firstTrailingBit(global2.x)), -1i), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 2147483647i), firstLeadingBit(var_0.xzy)), -63564i)), vec2<u32>(u_input.a.x, ~4294967295u), func_6(func_5(~global2.x, func_4(func_1(u_input.a.x, global4.c), 1u, _wgslsmith_f_op_f32(trunc(-975f)), global4.a.x), var_2, global4.d.b), true, _wgslsmith_f_op_f32(192f + 2979f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec2<i32>(global2.x, global2.x), func_2(vec2<i32>(-2147483647i, global2.x), global4.d.d.x).d.d.x).b.c.x)), -1000f);
}

