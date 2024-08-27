struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<f32>, 3>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_3(Struct_1(!global0.x, arg_1, 4547u, max(vec2<i32>(abs(arg_1), 1i), vec2<i32>(_wgslsmith_mod_i32(arg_3.x, arg_1), 21334i)), !select(!vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, true)), select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, global0.x, true, global0.x), global0.x))), _wgslsmith_div_u32(~(~u_input.b), 0u), Struct_1(all(vec3<bool>(global0.x || global0.x, true, all(global0.wzw))), -30277i, ~_wgslsmith_dot_vec3_u32(~u_input.a.wyw, ~u_input.a.xwz), arg_3.yx << (u_input.a.zx % vec2<u32>(32u)), select(!(!vec4<bool>(true, true, global0.x, true)), select(!vec4<bool>(global0.x, false, true, global0.x), !vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, false, global0.x, global0.x)), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), !vec4<bool>(true, global0.x, global0.x, true)))), _wgslsmith_div_vec4_u32(u_input.a, u_input.a));
    global0 = vec4<bool>(var_0.a.e.x, global0.x, !(!any(var_0.a.e.xx)), true);
    let var_1 = u_input.b >= 4294967295u;
    let var_2 = Struct_4(var_0.d.wyy << (vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(u_input.b), u_input.a.x), reverseBits(~u_input.a.x), 24044u) % vec3<u32>(32u)), Struct_1(false, 1i, 2958u, abs(~abs(vec2<i32>(var_0.a.b, arg_1))), select(vec4<bool>(all(vec3<bool>(true, true, var_0.a.a)), var_1, true, !global0.x), select(select(var_0.c.e, vec4<bool>(var_1, var_0.a.a, global0.x, global0.x), vec4<bool>(global0.x, true, false, true)), vec4<bool>(var_0.a.a, global0.x, true, global0.x), vec4<bool>(true, false, global0.x, var_1)), var_0.a.e)), Struct_2(var_0.c, Struct_1(any(vec2<bool>(false, true)), select(var_0.c.d.x, -49636i, true) ^ ~(-21654i), ~u_input.a.x, var_0.a.d, !vec4<bool>(false, global0.x, true, var_1)), !vec3<bool>(true, any(var_0.a.e), any(var_0.a.e)), vec2<bool>(true, false), _wgslsmith_f_op_f32(floor(-1336f))), !global0.xz);
    let var_3 = Struct_3(var_0.c, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~u_input.b, 39260u), abs(var_2.a))), var_0.a, u_input.a);
    return all(!vec4<bool>(false, var_1, true, !(84502u >= arg_0)));
}

fn func_2() -> bool {
    global0 = vec4<bool>(global0.x, false, all(!vec4<bool>(true, func_3(u_input.b, 35876i, 217f, vec3<i32>(-46103i, 1i, 14464i)), all(global0.wxw), !global0.x)), true);
    var var_0 = _wgslsmith_add_i32(reverseBits(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(34128i, 24557i), vec2<i32>(1i, 0i)), -vec2<i32>(1i, 30697i)))), -39802i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-725f)) - _wgslsmith_f_op_f32(584f * -498f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(996f, _wgslsmith_f_op_f32(ceil(-1000f)))))));
    var_0 = 9016i;
    var var_2 = global0.wy;
    return var_2.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>) -> bool {
    global0 = select(!vec4<bool>(global0.x, select(func_2(), false, true), all(!vec2<bool>(arg_0.x, arg_0.x)), global0.x), vec4<bool>(true, global0.x, all(select(arg_0.zz, vec2<bool>(false, global0.x), vec2<bool>(false, true))), func_2() || true), vec4<bool>(!(all(vec4<bool>(arg_0.x, global0.x, arg_0.x, false)) || true), arg_0.x, false, false & global0.x));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(u_input.a.x) & (~1u & ~u_input.b), u_input.b) & abs(0u), 3u)];
    var var_1 = vec2<bool>(global0.x, arg_0.x);
    var_1 = global0.wy;
    var var_2 = ~_wgslsmith_sub_u32(u_input.b, u_input.b);
    return var_1.x && all(select(global0.wyy, global0.zzx, all(arg_0)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(select(vec3<i32>(-12735i, 0i, 0i), vec3<i32>(-25225i, -31809i, -3349i), false), vec3<i32>(-26275i, -1777i, -10392i)), max(vec3<i32>(_wgslsmith_add_i32(0i, 47867i), 1i, 13799i), -firstTrailingBit(vec3<i32>(2147483647i, 5054i, -41641i)))), vec3<i32>(1i, reverseBits(~(-64130i)), 1i));
    let var_1 = abs(u_input.a.yw);
    var var_2 = 0u | (29951u << (~(~var_1.x >> (~var_1.x % 32u)) % 32u));
    var var_3 = arg_0;
    let var_4 = Struct_4(_wgslsmith_add_vec3_u32(reverseBits(~vec3<u32>(0u, 4294967295u, 66375u)) >> ((vec3<u32>(0u, 25055u, var_1.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(50209u, 4294967295u, 8787u), vec3<u32>(var_1.x, var_1.x, 34279u), u_input.a.wwx) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(31482u, _wgslsmith_dot_vec2_u32(vec2<u32>(10990u, u_input.b), ~vec2<u32>(u_input.a.x, 36510u)), var_1.x << (u_input.a.x % 32u))), Struct_1(true, ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(-41733i, 26448i, var_0.x), var_0.x >> (45930u % 32u)), 1u, ~var_0.xy, vec4<bool>((29310u != var_1.x) | true, global0.x, false, _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(1049f + -1138f))), Struct_2(Struct_1(true, -1i, u_input.b, var_0.zx, vec4<bool>(func_1(arg_1, var_0), select(global0.x, global0.x, global0.x), true && arg_1.x, arg_1.x)), Struct_1(global0.x, -2147483647i, u_input.a.x, ~var_0.xx, select(arg_1, !vec4<bool>(true, global0.x, arg_1.x, false), vec4<bool>(false, arg_1.x, global0.x, true))), global0.xwx, arg_1.xz, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2436f * 836f)))), vec2<bool>((func_2() && (arg_1.x == true)) | arg_1.x, false));
    return var_4.c.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, 1i, 1i)), -vec3<i32>(-1i, 1i, 36728i)) << (u_input.a.x % 32u);
    global0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f * 389f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-250f)) - -1000f))) - _wgslsmith_f_op_f32(ceil(305f))), vec4<bool>(false, true, all(!(!vec4<bool>(false, global0.x, global0.x, true))), func_1(vec4<bool>(false, global0.x, global0.x, global0.x), countOneBits(vec3<i32>(2147483647i, -35998i, 2147483647i))) & global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

