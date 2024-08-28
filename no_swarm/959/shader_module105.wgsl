struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(20092i, 2147483647i, 2147483647i), vec3<i32>(1i, -10588i, 22231i), vec3<i32>(26963i, 0i, 1i), vec3<i32>(-41486i, -1i, 7907i), vec3<i32>(2147483647i, -1i, -24773i), vec3<i32>(0i, -27400i, -5301i), vec3<i32>(0i, 46999i, 15542i), vec3<i32>(40034i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(-1i, 54326i, 2147483647i), vec3<i32>(38875i, 1i, 41303i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 0i));

var<private> global1: bool = false;

var<private> global2: array<i32, 3> = array<i32, 3>(-1i, 1i, 4229i);

var<private> global3: array<f32, 22>;

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 94636u, 1u, 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4) -> f32 {
    var var_0 = ~max(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4.x, 50740u, global4.x, global4.x), vec4<u32>(47926u, 29169u, global4.x, global4.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 51287u, 39881u), vec3<u32>(global4.x, 24337u, 33702u))), ~vec2<u32>(~global4.x, global4.x));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -879f)))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(55362u, 22u)] - 1000f)) - -105f);
}

fn func_2() -> f32 {
    var var_0 = select(abs(abs(-1i)), 0i, false);
    var var_1 = Struct_5(-global2[_wgslsmith_index_u32(4294967295u, 3u)] >= _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i) * -u_input.a), Struct_2(Struct_1(1u), _wgslsmith_f_op_f32(func_3(-357f, Struct_4(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(20188u, 3u)], -1i, u_input.a.x)), Struct_4(reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(global4.x, 3u)], u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(41714u, 3u)]))))), vec2<bool>(!(2147483647i < global2[_wgslsmith_index_u32(global4.x, 3u)]), true), Struct_1(~global4.x)), ~(~vec2<u32>(1u, ~0u)));
    var_1 = Struct_5(all(!vec4<bool>(!var_1.b.c.x, !var_1.b.c.x, var_1.b.c.x & var_1.a, true)), var_1.b, vec2<u32>(~var_1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(25868u, 17432u, global4.x, 1u) << (vec4<u32>(53736u, var_1.c.x, global4.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(28503u, 13970u, var_1.b.d.a, 4294967295u))) | min(vec2<u32>(var_1.c.x & global4.x, var_1.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.d.a, 0u), vec2<u32>(1u, var_1.c.x)) << (max(global4.wx, global4.wz) % vec2<u32>(32u))));
    let var_2 = ~vec4<i32>(~global2[_wgslsmith_index_u32(18415u, 3u)], ~_wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(var_1.b.d.a, 3u)], u_input.a.x), global0[_wgslsmith_index_u32(47646u, 14u)])), i32(-1i) * -62834i, _wgslsmith_sub_i32(~(1i >> (global4.x % 32u)), 1i));
    let var_3 = 1000f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(0u, 22u)], var_1.b.b, var_1.a))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.b * 2841f), var_3)) + _wgslsmith_f_op_f32(-var_1.b.b)))));
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - global3[_wgslsmith_index_u32(reverseBits(reverseBits(4294967295u)), 22u)]);
    global0 = array<vec3<i32>, 14>();
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = firstTrailingBit(min(max(u_input.a.xx, vec2<i32>(~u_input.a.x, -2147483647i)), u_input.a.yy));
    let var_3 = 120739u;
    return select(vec4<i32>(_wgslsmith_mult_i32(~global2[_wgslsmith_index_u32(7047u, 3u)], abs(global2[_wgslsmith_index_u32(18254u, 3u)])), _wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, 60472i, var_2.x, -14546i), u_input.a), vec4<i32>(-2147483647i, u_input.a.x, 17244i, 1i) ^ vec4<i32>(-63206i, global2[_wgslsmith_index_u32(var_3, 3u)], 15285i, u_input.a.x)), i32(-1i) * -1i, _wgslsmith_sub_i32(32267i, var_2.x)) >> (~vec4<u32>(firstLeadingBit(global4.x), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global4.x), vec2<u32>(global4.x, global4.x)), ~0u) % vec4<u32>(32u)), vec4<i32>(-select(1i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_2.x, 2147483647i, u_input.a.x, var_2.x)), any(vec2<bool>(false, false))), _wgslsmith_dot_vec2_i32(u_input.a.zz, firstLeadingBit(vec2<i32>(11105i, 0i))), 65235i, -6519i), vec4<bool>(var_1.x, any(select(select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false)), !vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x))), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1());
    global2 = array<i32, 3>();
    var var_1 = min(abs(select(~(-u_input.a.www), ~vec3<i32>(2147483647i, 82017i, var_0.a.x) << (global4.zzy % vec3<u32>(32u)), vec3<bool>(true, true, false))), ~reverseBits(~var_0.a.xzw));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-778f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.x, 22u)] - global3[_wgslsmith_index_u32(53415u, 22u)]), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(global4.x, 22u)])), global3[_wgslsmith_index_u32(global4.x, 22u)] <= 471f))), 420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(15312u, 22u)])))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global4.x, 22u)], 644f, -472f, global3[_wgslsmith_index_u32(global4.x, 22u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global4.x, 22u)], global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(global4.x, 22u)], global3[_wgslsmith_index_u32(global4.x, 22u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(global4.x, 22u)], global3[_wgslsmith_index_u32(1u, 22u)], -718f, -555f), vec4<f32>(global3[_wgslsmith_index_u32(global4.x, 22u)], 458f, global3[_wgslsmith_index_u32(4294967295u, 22u)], 390f)))), vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 22u)] <= global3[_wgslsmith_index_u32(global4.x, 22u)], true, true, all(vec4<bool>(true, true, false, false))))))));
    global1 = true;
    let var_3 = Struct_3(var_2.wzw, ~(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(23411i, global2[_wgslsmith_index_u32(1u, 3u)], u_input.a.x, -45043i), var_0.a), -u_input.a) & var_1.x));
    var var_4 = _wgslsmith_mod_u32(reverseBits(_wgslsmith_sub_u32(abs(~global4.x), global4.x)), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(global4.x, global4.x) << (1u % 32u), reverseBits(~global4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(global4.x, ~0u, global4.x), ~(~abs(40494u)), ~(~((global4.yy & vec2<u32>(0u, 69420u)) ^ vec2<u32>(95195u, 44395u))), u_input.a ^ _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, var_3.b), -1i, 23152i, i32(-1i) * -13063i), vec4<i32>(var_0.a.x >> (1u % 32u), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(global4.x, 3u)], 0i), var_3.b, 1i)), ~(~global4.wy));
}

