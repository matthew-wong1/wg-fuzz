struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: u32;

var<private> global2: bool = true;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    global0 = array<Struct_2, 21>();
    var var_0 = 2147483647i;
    let var_1 = u_input.b.x < -1i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-433f + _wgslsmith_f_op_f32(1837f * 1000f))))));
    global0 = array<Struct_2, 21>();
    return _wgslsmith_div_vec4_u32(vec4<u32>(abs(_wgslsmith_sub_u32(4294967295u, min(u_input.a, u_input.a))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4616u, u_input.a), vec3<u32>(44442u, 16978u, u_input.a)), countOneBits(u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(81085u, 1u, 0u) | vec3<u32>(1u, 1113u, u_input.a), vec3<u32>(56196u, 11144u, 466u) << (vec3<u32>(57467u, 50175u, u_input.a) % vec3<u32>(32u)))), u_input.a, u_input.a), min(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 22878u, 38029u, u_input.a), vec4<u32>(0u, 1u, 26707u, u_input.a)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 8792u), vec2<u32>(4294967295u, 58123u), var_1), _wgslsmith_add_vec2_u32(vec2<u32>(10033u, 35735u), vec2<u32>(u_input.a, u_input.a))), 16968u, u_input.a), firstTrailingBit(vec4<u32>(u_input.a, ~1u, u_input.a, 1852u))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_3 {
    global2 = true;
    global0 = array<Struct_2, 21>();
    global2 = !(~((-2147483647i | arg_1) << (u_input.a % 32u)) < ~_wgslsmith_add_i32(u_input.b.x, u_input.b.x));
    var var_0 = Struct_3(all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), u_input.a != 1u)), abs(u_input.b.zz), !all(vec3<bool>(true, true, true)), Struct_2(Struct_1(func_3() | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(550f, -1403f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * arg_0.zy)), -1000f)), vec3<bool>(true, !(all(vec4<bool>(true, false, true, false)) || true), any(vec4<bool>(all(vec3<bool>(true, false, true)), true, u_input.a < u_input.a, false))));
    let var_1 = _wgslsmith_add_u32(func_3().x, 37612u);
    return Struct_3(all(!select(var_0.e.zx, vec2<bool>(var_0.c, false), select(var_0.e.zx, vec2<bool>(var_0.a, var_0.c), var_0.e.x))), ~_wgslsmith_mult_vec2_i32(~var_0.b, var_0.b), all(var_0.e.zy), var_0.d, select(!var_0.e, var_0.e, var_0.e));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_4 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.d.a.c.x, arg_0.a.d.a.d, 329f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-151f, 2197f, arg_2.a.d.a.c.x), vec3<f32>(arg_2.a.d.a.d, arg_0.a.d.a.d, -689f)))))), arg_0.b);
    global1 = ~39741u;
    let var_1 = -1149f;
    var_0 = arg_2.a;
    let var_2 = Struct_4(arg_2.a, min(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-3262i, 2147483647i) >> (arg_0.a.d.a.a.yw % vec2<u32>(32u)), select(arg_0.a.b, vec2<i32>(arg_2.a.b.x, arg_0.a.b.x), true))), u_input.b.x));
    return var_2;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = func_4(arg_0, vec2<bool>(!(arg_0.a.a || true) || any(vec3<bool>(arg_2, arg_0.a.a, true)), true), Struct_4(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.d.a.d, arg_0.a.d.a.b, 717f), vec3<f32>(-110f, 1000f, 555f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1220f, arg_0.a.d.a.d, -622f), vec3<f32>(-905f, 597f, arg_0.a.d.a.c.x)))), ~_wgslsmith_sub_i32(u_input.b.x, 34871i)), _wgslsmith_div_i32(1i, min(u_input.b.x & -1414i, ~1i))), select(firstTrailingBit(arg_0.a.d.a.a.wzy), abs(select(select(arg_0.a.d.a.a.wyz, arg_0.a.d.a.a.zxy, vec3<bool>(arg_2, arg_0.a.c, false)), vec3<u32>(0u, arg_0.a.d.a.a.x, 4294967295u), all(arg_0.a.e.zy))), arg_0.a.c));
    global2 = arg_0.a.e.x;
    global1 = ~1u;
    var var_1 = vec3<u32>(33351u, ~(~(u_input.a >> (35505u % 32u))), 4294967295u) & select(_wgslsmith_clamp_vec3_u32(arg_0.a.d.a.a.xyz, abs(arg_0.a.d.a.a.zzz), arg_0.a.d.a.a.zzy) >> (min(vec3<u32>(var_0.a.d.a.a.x, 4294967295u, 15102u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, arg_0.a.d.a.a.x, u_input.a), vec3<u32>(1u, 0u, u_input.a))) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, var_0.a.d.a.a.x, u_input.a), vec3<u32>(u_input.a, var_0.a.d.a.a.x, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 3244u), vec3<u32>(14662u, 1u, 1u))), var_0.a.d.a.a.xxz), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.d.a.b, var_0.a.d.a.b, var_0.a.d.a.c.x), vec3<f32>(var_0.a.d.a.d, 1000f, 1000f), arg_0.a.e.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.d.a.b, -472f, arg_0.a.d.a.d))), ~reverseBits(0i)).e);
    var_0 = func_4(Struct_4(Struct_3(-30751i <= (arg_1 ^ u_input.b.x), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(21583i, var_0.a.b.x), vec2<i32>(-20301i, arg_0.a.b.x), arg_0.a.e.yz), reverseBits(vec2<i32>(2147483647i, 22290i)), vec2<i32>(-2147483647i, -38319i)), !(var_0.a.d.a.a.x <= u_input.a), func_4(arg_0, !vec2<bool>(true, var_0.a.a), func_4(arg_0, arg_0.a.e.yz, Struct_4(Struct_3(var_0.a.a, vec2<i32>(arg_0.a.b.x, 20565i), true, arg_0.a.d, var_0.a.e), u_input.b.x), vec3<u32>(3143u, var_0.a.d.a.a.x, 62098u)), firstLeadingBit(var_0.a.d.a.a.wwy)).a.d, var_0.a.e), -1i), select(var_0.a.e.xy, var_0.a.e.yy, select(arg_0.a.e.zy, !func_4(Struct_4(Struct_3(arg_0.a.a, u_input.b.zz, arg_0.a.c, Struct_2(Struct_1(vec4<u32>(15512u, 7086u, var_1.x, var_1.x), 272f, arg_0.a.d.a.c, var_0.a.d.a.b)), vec3<bool>(arg_2, var_0.a.e.x, arg_2)), -2147483647i), vec2<bool>(var_0.a.e.x, false), arg_0, arg_0.a.d.a.a.zxz).a.e.yy, arg_0.a.e.x)), arg_0, var_0.a.d.a.a.zzx);
    return func_4(Struct_4(arg_0.a, arg_1), !select(select(!arg_0.a.e.yz, vec2<bool>(false, true), true), !arg_0.a.e.yx, vec2<bool>(true, true)), func_4(arg_0, arg_0.a.e.xy, func_4(Struct_4(arg_0.a, firstLeadingBit(-1i)), select(select(var_0.a.e.yz, var_0.a.e.xz, arg_0.a.e.zx), func_2(vec3<f32>(arg_0.a.d.a.c.x, var_0.a.d.a.d, 1141f), var_0.a.b.x).e.yx, !arg_0.a.e.yz), Struct_4(Struct_3(arg_2, var_0.a.b, arg_0.a.c, global0[_wgslsmith_index_u32(var_0.a.d.a.a.x, 21u)], vec3<bool>(true, true, var_0.a.a)), _wgslsmith_div_i32(0i, 11158i)), select(~var_0.a.d.a.a.zww, var_0.a.d.a.a.xxy, select(vec3<bool>(arg_0.a.a, false, true), vec3<bool>(false, false, var_0.a.c), arg_2))), ~var_0.a.d.a.a.wxy), ~vec3<u32>(arg_0.a.d.a.a.x, ~var_1.x, reverseBits(func_2(vec3<f32>(var_0.a.d.a.d, arg_0.a.d.a.b, 784f), -2147483647i).d.a.a.x))).a.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = Struct_2(func_1(Struct_4(Struct_3(true, vec2<i32>(u_input.b.x, -31660i), true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(97829u, 25881u), 21u)], vec3<bool>(true, true, true)), _wgslsmith_clamp_i32(u_input.b.x, -32125i, u_input.b.x)), u_input.b.x, true));
    global2 = true;
    var var_2 = var_1.a.a.x;
    var var_3 = Struct_1(var_1.a.a, -1188f, var_1.a.c, _wgslsmith_f_op_f32(-var_1.a.d));
    let var_4 = Struct_2(Struct_1(var_1.a.a | ~(~var_1.a.a), var_1.a.c.x, func_1(func_4(func_4(Struct_4(Struct_3(false, u_input.b.xx, false, var_1, vec3<bool>(false, true, true)), u_input.b.x), vec2<bool>(false, false), Struct_4(Struct_3(false, u_input.b.yx, true, global0[_wgslsmith_index_u32(var_3.a.x, 21u)], vec3<bool>(true, true, true)), u_input.b.x), vec3<u32>(u_input.a, 0u, 0u)), vec2<bool>(true, true), Struct_4(Struct_3(true, u_input.b.xx, false, var_1, vec3<bool>(false, true, false)), 2147483647i), abs(var_1.a.a.xxx)), abs(func_2(vec3<f32>(var_1.a.b, var_3.c.x, var_1.a.b), u_input.b.x).b.x), true).c, -307f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

