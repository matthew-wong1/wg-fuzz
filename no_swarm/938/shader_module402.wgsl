struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<u32, 28> = array<u32, 28>(0u, 0u, 32126u, 0u, 0u, 5538u, 32162u, 4294967295u, 1u, 4294967295u, 0u, 0u, 29286u, 49957u, 16277u, 1u, 15655u, 55643u, 88095u, 69714u, 0u, 0u, 4294967295u, 22745u, 4294967295u, 49869u, 25238u, 4294967295u);

var<private> global1: array<vec3<i32>, 3>;

var<private> global2: array<u32, 19> = array<u32, 19>(79789u, 4294967295u, 15531u, 10801u, 0u, 4294967295u, 969u, 0u, 4294967295u, 0u, 0u, 0u, 4294967295u, 4294967295u, 14397u, 21625u, 1u, 40619u, 0u);

var<private> global3: i32 = i32(-2147483648);

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(global4.a, arg_0.b, true & any(global4.b.xw));
    let var_1 = Struct_1(-var_0.a, vec4<bool>(!any(select(arg_0.b.zy, vec2<bool>(global4.b.x, false), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1531f + 1282f))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(515f * 1244f), _wgslsmith_f_op_f32(-1052f * -318f), global4.c | true)), global4.b.x, false), false);
    let var_2 = -firstTrailingBit(select(firstTrailingBit(-arg_0.a), -var_0.a, select(!var_0.b.yw, vec2<bool>(true, false), false)));
    var var_3 = vec3<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)] ^ global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 19u)]), vec2<u32>(8139u, 4294967295u)), abs(vec2<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(97828u, 28u)], 19u)], 58277u))), 19u)] | 4294967295u, 28u)], 19u)], _wgslsmith_dot_vec4_u32(~(~vec4<u32>(19178u, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(82436u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)])), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(49239u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(944u, 19u)], 19u)], 47543u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)]), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 28u)], 16866u, global0[_wgslsmith_index_u32(77060u, 28u)])), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 28u)], global2[_wgslsmith_index_u32(17371u, 19u)], global0[_wgslsmith_index_u32(40190u, 28u)]), vec4<u32>(0u, global2[_wgslsmith_index_u32(72657u, 19u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88005u, 19u)], 19u)], 28u)], 4294967295u)), ~vec4<u32>(4294967295u, 50574u, 9283u, global0[_wgslsmith_index_u32(22072u, 28u)])), true)), select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(0u, 19u)]), 19u)], 19u)], ~max(~0u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47797u, 28u)], 28u)], 28u)], 19u)], 19u)], global0[_wgslsmith_index_u32(1u, 28u)]), 19u)]), true || !all(vec3<bool>(var_0.b.x, true, true))));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(668f, _wgslsmith_div_f32(343f, -241f))) + 1000f), -175f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(2118f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.b.x)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-818f)), 464f, _wgslsmith_f_op_f32(-1000f + 1f)));
    return _wgslsmith_sub_i32(u_input.a, u_input.a);
}

fn func_2() -> Struct_1 {
    var var_0 = ~func_3(Struct_1(global4.a, select(vec4<bool>(false, global4.b.x, true, global4.b.x), !vec4<bool>(global4.c, false, false, false), !global4.b), !global4.c));
    var var_1 = Struct_1(~(~min(global4.a, -global4.a)), global4.b, true);
    let var_2 = !var_1.b.wz;
    var_0 = 0i;
    global3 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.a & 0i, -var_1.a.x, _wgslsmith_mult_i32(global4.a.x, 1i)), ~vec3<i32>(var_1.a.x, 42056i, global4.a.x), global4.b.xyw), ~min(vec3<i32>(global4.a.x, -22995i, u_input.a) << (vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 19u)]) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(0u, 3u)], vec3<i32>(-2147483647i, u_input.a, var_1.a.x)))), ~abs(select(vec3<i32>(var_1.a.x, var_1.a.x, global4.a.x), -vec3<i32>(1i, u_input.a, global4.a.x), global4.b.xzx)));
    return Struct_1(var_1.a, !vec4<bool>(var_1.c, true, (global0[_wgslsmith_index_u32(66015u, 28u)] >> (0u % 32u)) <= ~global0[_wgslsmith_index_u32(14827u, 28u)], true), global4.c && var_1.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(global4.a, vec4<bool>(true, !(!arg_0.c), true, all(!(!vec3<bool>(arg_1.c, false, arg_0.b.x)))), any(global4.b.xxx));
    global1 = array<vec3<i32>, 3>();
    let var_1 = Struct_1(arg_0.a, global4.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(382f)), _wgslsmith_f_op_f32(-959f * _wgslsmith_f_op_f32(trunc(-180f)))) == _wgslsmith_f_op_f32(1844f - _wgslsmith_f_op_f32(-1225f - _wgslsmith_f_op_f32(f32(-1f) * -609f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(962f)), 636f)))));
    var var_3 = Struct_1(arg_1.a, !(!var_1.b), !all(select(vec4<bool>(var_0.b.x, false, global4.c, false), select(vec4<bool>(arg_1.b.x, var_0.c, var_1.b.x, true), vec4<bool>(true, arg_1.b.x, true, var_1.b.x), vec4<bool>(global4.b.x, var_0.b.x, var_1.b.x, true)), !arg_0.c)));
    return func_2();
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<bool> {
    global2 = array<u32, 19>();
    var var_0 = func_4(func_2(), func_2(), ((~global0[_wgslsmith_index_u32(62894u, 28u)] << (abs(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31941u, 28u)], 19u)], 28u)]) % 32u)) << (~global2[_wgslsmith_index_u32(4294967295u, 19u)] % 32u)) << (_wgslsmith_dot_vec4_u32(arg_1, ~(arg_1 >> (arg_1 % vec4<u32>(32u)))) % 32u));
    let var_1 = Struct_1(-global4.a, !vec4<bool>(false, !var_0.b.x || !global4.b.x, min(32014i, 1i) >= min(global4.a.x, 63852i), !(global2[_wgslsmith_index_u32(1u, 19u)] > 0u)), !global4.b.x);
    let var_2 = true;
    let var_3 = func_2();
    return vec4<bool>(false, any(vec4<bool>(true, var_0.b.x, all(!vec4<bool>(false, var_0.c, false, var_2)), global4.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-566f * -1042f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.x, 370f)))) == _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), false);
}

fn func_5(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = abs(arg_0.a << (~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), vec2<u32>(56038u, global2[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4398u, 19u)], 19u)], 20245u), vec2<u32>(0u, 351u))) % vec2<u32>(32u)));
    var var_1 = -vec4<i32>(0i, arg_0.a.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(23805i, 1i), firstLeadingBit(global4.a.x), global4.a.x), ~1i), -34095i);
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-arg_0.a.x, var_2.a.x), ~global4.a, max(_wgslsmith_mult_vec2_i32(global4.a, max(vec2<i32>(57255i, -2147483647i), vec2<i32>(2147483647i, var_1.x))), var_2.a)), func_4(Struct_1(arg_0.a, !vec4<bool>(arg_0.b.x, global4.b.x, false, var_2.b.x), all(var_2.b.ywx)), var_2, global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(57912u, 19u)], 1u)), 19u)]).b, any(global4.b));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1513f + _wgslsmith_f_op_f32(floor(-212f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -953f)))));
    return ~countOneBits(~vec2<i32>(global4.a.x, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(Struct_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(global4.a, global4.a)), select(func_1(vec4<f32>(-636f, -925f, 914f, 118f), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26453u, 28u)], 28u)], 16095u, global0[_wgslsmith_index_u32(1u, 28u)]), Struct_1(global4.a, vec4<bool>(global4.c, true, global4.b.x, true), global4.c), vec2<f32>(-1127f, 1267f)), global4.b, !global4.b), global4.b.x)), global4.b, true);
    global2 = array<u32, 19>();
    let var_1 = -abs(-(~_wgslsmith_add_vec4_i32(vec4<i32>(-42067i, 0i, -24911i, 3724i), vec4<i32>(var_0.a.x, -6318i, u_input.a, global4.a.x))));
    let var_2 = Struct_1(vec2<i32>(-2147483647i, firstTrailingBit(var_1.x)), var_0.b, (~(var_0.a.x & var_0.a.x) == -15933i) || !func_2().b.x);
    let var_3 = global2[_wgslsmith_index_u32(min(1u, firstTrailingBit(global0[_wgslsmith_index_u32(30983u, 28u)])), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

