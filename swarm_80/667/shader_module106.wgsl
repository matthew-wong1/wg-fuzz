struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-213f, true, vec4<u32>(1u, 1u, 4294967295u, 14270u));

var<private> global1: vec4<bool>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(42796i, 4294967295u, vec2<i32>(4432i, 1i), vec2<i32>(1i, 35698i)), Struct_1(-50430i, 4294967295u, vec2<i32>(45588i, 2147483647i), vec2<i32>(-10953i, 2147483647i)), Struct_1(37272i, 0u, vec2<i32>(-41104i, -52526i), vec2<i32>(2147483647i, 31774i)), Struct_1(i32(-2147483648), 4294967295u, vec2<i32>(0i, 22837i), vec2<i32>(1i, 40207i)), Struct_1(i32(-2147483648), 1u, vec2<i32>(-45329i, -69812i), vec2<i32>(-1i, -37624i)), Struct_1(-25996i, 4294967295u, vec2<i32>(-5857i, -42209i), vec2<i32>(-14475i, -1i)), Struct_1(-43277i, 10523u, vec2<i32>(0i, -1i), vec2<i32>(-34358i, 0i)), Struct_1(-14719i, 4294967295u, vec2<i32>(-28849i, i32(-2147483648)), vec2<i32>(9071i, i32(-2147483648))), Struct_1(15473i, 0u, vec2<i32>(58644i, 0i), vec2<i32>(-37977i, 1i)), Struct_1(-1i, 4294967295u, vec2<i32>(21747i, i32(-2147483648)), vec2<i32>(-1820i, 67690i)), Struct_1(78980i, 4294967295u, vec2<i32>(0i, 16996i), vec2<i32>(0i, 20999i)), Struct_1(-20074i, 1u, vec2<i32>(22750i, 0i), vec2<i32>(-1i, 4584i)), Struct_1(33928i, 4294967295u, vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -13571i)), Struct_1(-18043i, 1u, vec2<i32>(i32(-2147483648), 43455i), vec2<i32>(-1i, -43922i)), Struct_1(-1i, 17345u, vec2<i32>(96866i, 28938i), vec2<i32>(-14549i, 1i)), Struct_1(0i, 84785u, vec2<i32>(-53273i, 0i), vec2<i32>(9597i, 0i)), Struct_1(-50615i, 72257u, vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, 49669i)), Struct_1(-1i, 0u, vec2<i32>(i32(-2147483648), 0i), vec2<i32>(40173i, i32(-2147483648))), Struct_1(-38854i, 4294967295u, vec2<i32>(0i, 46655i), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(i32(-2147483648), 0u, vec2<i32>(1i, 1i), vec2<i32>(38423i, i32(-2147483648))), Struct_1(23195i, 41896u, vec2<i32>(27327i, -30165i), vec2<i32>(0i, 1i)), Struct_1(7698i, 4294967295u, vec2<i32>(58917i, i32(-2147483648)), vec2<i32>(-1i, -1i)));

var<private> global4: array<i32, 22>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    var var_0 = Struct_2(global0.a, global0.a == _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(global0.a, global0.a)))), vec4<u32>(global0.c.x, _wgslsmith_mult_u32(arg_0.b ^ ~arg_0.b, 0u), ~u_input.c.x, ~firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, arg_0.b))));
    global3 = array<Struct_1, 22>();
    global1 = !arg_1;
    let var_1 = _wgslsmith_sub_vec3_i32(countOneBits(abs(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(arg_0.c.x, 2147483647i, -1i)))), _wgslsmith_add_vec3_i32(~firstTrailingBit(~u_input.a), -(~_wgslsmith_mult_vec3_i32(vec3<i32>(-5859i, -10717i, global4[_wgslsmith_index_u32(var_0.c.x, 22u)]), vec3<i32>(0i, arg_0.d.x, 25024i)))));
    var var_2 = all(global1.zwy);
    return var_0.a;
}

fn func_2(arg_0: vec3<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a, global0.a))), vec2<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x, u_input.c.x, vec2<i32>(-1i, global4[_wgslsmith_index_u32(1u, 22u)]), vec2<i32>(-2147483647i, u_input.a.x)), !vec4<bool>(global0.b, global0.b, true, true), global1.x))))));
    var var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -655f));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~reverseBits(u_input.c.x), 4294967295u), 22u)];
    global3 = array<Struct_1, 22>();
    var_0 = _wgslsmith_f_op_vec2_f32(var_1.zx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-747f, _wgslsmith_f_op_f32(2352f * -851f))) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_div_f32(var_0.x, var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a, 860f)), _wgslsmith_f_op_f32(-var_1.x)))));
    return u_input.c;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(1i, global4[_wgslsmith_index_u32(79844u, 22u)])), vec2<i32>(u_input.a.x, arg_0.d.x)) ^ reverseBits(arg_1.d), vec2<i32>(u_input.a.x, ~_wgslsmith_add_i32(global4[_wgslsmith_index_u32(arg_1.b, 22u)], 1i))), -countOneBits(~(-arg_1.c)));
    let var_1 = 0i;
    global3 = array<Struct_1, 22>();
    return select(_wgslsmith_div_vec4_u32(func_2(-abs(u_input.a)), func_2(~(-vec3<i32>(43977i, -9586i, 2147483647i)))), u_input.c, global1.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec2<i32> {
    var var_0 = 40203u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(1f - -1290f), arg_3 && global0.b, firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(global0.c.x, _wgslsmith_div_u32(4294967295u, 15766u)), 0u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 1u), 43808u | arg_0.c.x, ~arg_0.c.x), global0.c.x)));
    var var_2 = reverseBits(global0.c.xx);
    global2 = arg_2.c.x;
    let var_3 = select(~_wgslsmith_mult_vec2_u32(arg_1.c.xw, vec2<u32>(_wgslsmith_mod_u32(arg_2.c.x, u_input.c.x), 42776u)), vec2<u32>(56057u, _wgslsmith_clamp_u32(func_2(vec3<i32>(1i, 1i, 1i)).x, _wgslsmith_dot_vec4_u32(abs(u_input.c), ~u_input.c), func_2(u_input.a ^ u_input.a).x)), (_wgslsmith_div_i32(u_input.a.x, -10469i) > _wgslsmith_mod_i32(abs(u_input.a.x), 1i)) != all(!(!vec4<bool>(true, arg_2.b, arg_3, false))));
    return u_input.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(284f, -15724i != (-2147483647i >> (u_input.b.x % 32u)), max(vec4<u32>(1u, ~0u, global0.c.x, global0.c.x), ~func_1(Struct_1(-2147483647i, global0.c.x, u_input.a.zx, u_input.a.yy), global3[_wgslsmith_index_u32(global0.c.x, 22u)], vec2<u32>(48926u, 14163u)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1550f, -461f)), all(select(vec3<bool>(true, global1.x, global0.b), !global1.wyx, all(vec4<bool>(global0.b, global0.b, false, false)))), vec4<u32>(0u, global0.c.x, u_input.b.x, func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<i32>(-13656i, 2147483647i, u_input.a.x), u_input.a)).x)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1053f * global0.a)))), !all(global1.ww), vec4<u32>(global0.c.x, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~1u, ~3776u & (u_input.c.x << (1u % 32u)))), _wgslsmith_add_i32(-44329i, _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(25264i, -2147483647i))) < u_input.a.x);
    let var_1 = -659f;
    let var_2 = abs(-_wgslsmith_clamp_vec4_i32(~(vec4<i32>(global4[_wgslsmith_index_u32(global0.c.x, 22u)], -74433i, -2147483647i, global4[_wgslsmith_index_u32(global0.c.x, 22u)]) | vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 22u)], 8635i, u_input.a.x, 2147483647i)), firstLeadingBit(firstTrailingBit(vec4<i32>(global4[_wgslsmith_index_u32(1u, 22u)], global4[_wgslsmith_index_u32(59795u, 22u)], var_0.x, -2147483647i))), vec4<i32>(countOneBits(u_input.a.x), u_input.a.x, -30450i, 58011i)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(floor(-2225f)), u_input.a.x >= u_input.a.x, ~vec4<u32>(49363u, abs(u_input.b.x & global0.c.x), u_input.b.x, ~23193u));
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(global0.a)), !var_3.b, ~(~select(firstLeadingBit(vec4<u32>(42224u, u_input.b.x, 0u, u_input.b.x)), var_3.c, select(vec4<bool>(var_3.b, global0.b, var_3.b, true), vec4<bool>(global1.x, global0.b, false, var_3.b), vec4<bool>(false, global0.b, var_3.b, global1.x)))));
    global2 = ~1509u;
    global4 = array<i32, 22>();
    let var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_mod_vec3_i32(~u_input.a, -vec3<i32>(28246i, var_2.x, 1i)), ~u_input.a & var_2.xzy), ~u_input.a);
    var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))))), false, ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 0u, 41778u, 4294967295u), vec4<u32>(var_3.c.x, 4294967295u, u_input.c.x, global0.c.x), vec4<u32>(57422u, 0u, 0u, 4294967295u)), ~vec4<u32>(0u, var_3.c.x, var_3.c.x, 4294967295u)) << (~vec4<u32>(~var_3.c.x, ~u_input.b.x, 4294967295u ^ u_input.c.x, 114152u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global0.c.xyz), (abs(firstTrailingBit(vec3<u32>(4294967295u, var_3.c.x, 0u))) & global0.c.ywx) >> (~_wgslsmith_add_vec3_u32(global0.c.yzy << (vec3<u32>(45852u, 0u, 50642u) % vec3<u32>(32u)), vec3<u32>(global0.c.x, var_3.c.x, global0.c.x) ^ global0.c.yww) % vec3<u32>(32u)), 1u, global0.c.x, ~_wgslsmith_mod_u32(4294967295u, global0.c.x));
}

