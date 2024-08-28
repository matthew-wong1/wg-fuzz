struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), 28086i), vec2<i32>(-1i, 0i), vec2<i32>(-26122i, 2147483647i), vec2<i32>(-1i, -5592i), vec2<i32>(2147483647i, 0i), vec2<i32>(-21389i, 0i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 3603i), vec2<i32>(21159i, 6658i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(22816i, -39061i), vec2<i32>(-1i, -6371i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -6305i), vec2<i32>(-41858i, i32(-2147483648)), vec2<i32>(9158i, 2147483647i), vec2<i32>(-19804i, 35667i));

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 7>;

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 813u, 4294967295u, 4294967295u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(global2.a, vec4<bool>(false, true, global2.b.x != false, true), global2.c);
    global4 = (_wgslsmith_clamp_vec4_u32(min(~vec4<u32>(u_input.a.x, 71496u, u_input.a.x, 31826u), vec4<u32>(0u, u_input.a.x, global4.x, u_input.a.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, global4.x, global4.x, 4294967295u), vec4<u32>(47540u, 1u, global4.x, u_input.a.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, 66211u, 0u, 24679u), vec4<u32>(16680u, global4.x, global4.x, global4.x))) ^ firstTrailingBit(~vec4<u32>(u_input.a.x, 58530u, u_input.a.x, 88009u))) >> (vec4<u32>((global4.x ^ (global4.x << (4294967295u % 32u))) & 26222u, countOneBits(~global4.x | 47153u), reverseBits(global4.x), global4.x) % vec4<u32>(32u));
    let var_1 = _wgslsmith_clamp_vec3_i32(abs(_wgslsmith_add_vec3_i32(~abs(vec3<i32>(global2.c, 0i, arg_1.x)), _wgslsmith_add_vec3_i32(arg_1, reverseBits(vec3<i32>(1i, 2147483647i, 1i))))), arg_1, arg_1);
    let var_2 = true;
    let var_3 = -2147483647i << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(global4.x, 49516u, ~global4.x, u_input.a.x), ~vec4<u32>(1u, u_input.a.x, global4.x, u_input.a.x) ^ select(vec4<u32>(global4.x, 4294967295u, 63619u, 1u), vec4<u32>(4294967295u, global4.x, 54361u, 32540u), vec4<bool>(var_2, false, false, var_2))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, global4.x, 93889u) | (vec4<u32>(0u, 7508u, 29035u, 19444u) << (vec4<u32>(4294967295u, 15252u, 6336u, u_input.a.x) % vec4<u32>(32u))), ~select(vec4<u32>(39894u, u_input.a.x, global4.x, 4294967295u), vec4<u32>(0u, u_input.a.x, global4.x, u_input.a.x), global2.b), abs(vec4<u32>(1u, global4.x, global4.x, 2670u)))) % 32u);
    return -1i;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> i32 {
    let var_0 = select(-_wgslsmith_sub_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_0, 1i), vec3<i32>(arg_0, global2.c, arg_0))), vec3<i32>(arg_0, 6022i, 7711i) & vec3<i32>(15646i, arg_0, -19290i)), select(vec3<i32>(global2.c, -arg_0, 0i), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-2679i, -34263i, arg_0), ~vec3<i32>(arg_0, global2.c, 24844i)), ~(vec3<i32>(global2.c, global2.c, arg_0) | vec3<i32>(0i, arg_0, arg_0))), global2.b.x), vec3<bool>(!all(global2.b.xxy) && true, true, global2.b.x));
    let var_1 = !arg_1.wy;
    let var_2 = -func_3(1i, _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(var_0, vec3<i32>(20025i, -25980i, arg_0)), ~vec3<i32>(1i, 0i, 3763i)), abs(reverseBits(var_0)), vec3<i32>(firstLeadingBit(0i), arg_0, ~1i)), false);
    var var_3 = !vec4<bool>(var_1.x, true, true, var_1.x || var_1.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-868f, global2.a, _wgslsmith_f_op_f32(global2.a + 209f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, 1266f, 1471f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.a, -130f, 2232f)))))) - vec3<f32>(_wgslsmith_f_op_f32(global2.a * global2.a), global2.a, global2.a)), global2.b.x && var_3.x));
    return 1i;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_1(arg_1.a, vec4<bool>(any(select(vec4<bool>(true, true, arg_1.b.x, false), select(vec4<bool>(true, true, false, global2.b.x), arg_1.b, vec4<bool>(arg_1.b.x, global2.b.x, false, arg_1.b.x)), all(arg_1.b.zx))), true, global2.b.x, true && (_wgslsmith_f_op_f32(max(global2.a, -1691f)) != 148f)), firstTrailingBit(_wgslsmith_mod_i32(-34436i, i32(-1i) * -31922i)));
    var var_1 = global3[_wgslsmith_index_u32(global4.x, 7u)];
    global2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1488f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-221f - arg_0)))), !(!all(arg_1.b.xy)))), select(!select(global2.b, vec4<bool>(true, var_0.b.x, true, global2.b.x), !vec4<bool>(global2.b.x, var_1.x, var_0.b.x, var_1.x)), vec4<bool>(var_1.x, select(var_0.b.x, true, var_1.x) & false, true, global2.b.x), global2.b), _wgslsmith_clamp_i32(0i >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 21124u), select(0u, 18177u, true)) % 32u), ~(~(arg_1.c | global2.c)), 2147483647i));
    var var_2 = Struct_1(global2.a, !select(select(!arg_1.b, arg_1.b, any(global2.b)), vec4<bool>(true, any(vec4<bool>(arg_1.b.x, var_1.x, false, true)), arg_2.x < u_input.a.x, true), true), max(var_0.c << (~firstTrailingBit(u_input.a.x) % 32u), global2.c));
    var var_3 = ~global1[_wgslsmith_index_u32(u_input.a.x, 19u)];
    return firstTrailingBit(firstTrailingBit(vec4<u32>(60638u, ~15264u, ~(~arg_2.x), 17218u)));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(global2.a, vec4<bool>(global2.b.x, !global2.b.x, !global2.b.x, global2.b.x), global2.c);
    global4 = ~(~func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global2.a)))), Struct_1(var_0.a, global2.b, func_2(var_0.c, vec4<bool>(global2.b.x, false, global2.b.x, false))), select(u_input.a, ~u_input.a, global2.b.x)));
    var var_1 = false;
    var var_2 = ~vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global4.x, 81240u), 67166u), firstLeadingBit(~2426u), ~min(14415u, _wgslsmith_dot_vec3_u32(global4.zyz, vec3<u32>(19774u, global4.x, global4.x))), countOneBits(min(global4.x, 61663u)));
    var_2 = vec4<u32>(~reverseBits(abs(1u)), u_input.a.x, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 37169u), select(u_input.a, _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(1u, global4.x)), var_0.b.x)), 0u);
    return ~(_wgslsmith_dot_vec2_u32(global4.ww, vec2<u32>(_wgslsmith_sub_u32(var_2.x, u_input.a.x), global4.x)) & u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_f32(round(global2.a)), !vec4<bool>(false, true, global2.b.x, select(global2.b.x, global2.b.x, global4.x > 1u)), global2.c);
    global1 = array<vec2<i32>, 19>();
    let var_0 = 8317i & -_wgslsmith_sub_i32(~_wgslsmith_mult_i32(12054i, global2.c), ~(global2.c | global2.c));
    global4 = firstLeadingBit(select(~(~(~vec4<u32>(0u, global4.x, global4.x, global4.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, 0u, func_1(), global4.x & u_input.a.x), _wgslsmith_mult_vec4_u32(select(vec4<u32>(global4.x, 3467u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, global4.x, u_input.a.x), global2.b.x), ~vec4<u32>(24621u, u_input.a.x, 0u, u_input.a.x))), !global2.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-197f, global2.a), vec2<f32>(global2.a, -1585f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a)), global2.b.x)), vec2<f32>(_wgslsmith_f_op_f32(global2.a + global2.a), -511f)))), vec2<f32>(-1152f, _wgslsmith_f_op_f32(-global2.a)), select(select(vec2<bool>(false, true), select(!global2.b.wy, !global2.b.zw, vec2<bool>(global2.b.x, false)), select(global2.b.zw, vec2<bool>(global2.b.x, global2.b.x), select(vec2<bool>(true, global2.b.x), global2.b.yx, global2.b.xw))), select(vec2<bool>(global2.b.x && false, false), select(vec2<bool>(global2.b.x, true), !global2.b.xz, global2.b.yw), all(select(global2.b.xw, global2.b.xw, global2.b.xy))), all(select(global2.b.ww, select(global2.b.zy, global2.b.xw, vec2<bool>(false, false)), select(global2.b.zx, global2.b.wz, false))))));
    var var_2 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(-var_0, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 0i), global1[_wgslsmith_index_u32(global4.x, 19u)])), vec3<i32>(global2.c, select(-6045i, global2.c, true), global2.c)) >> (global4.yxz % vec3<u32>(32u)), vec3<i32>(abs(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global2.c), vec2<i32>(global2.c, global2.c)))), ~61385i, ~(~(var_0 & -1629i))));
    var var_3 = vec4<i32>(global2.c, -4772i, ~(~global2.c), -1i);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a * -867f) * _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(select(global2.a, -1435f, global2.a <= global2.a))))), vec4<bool>(global2.b.x && (select(global2.b.x, false, false) && (var_0 > var_3.x)), global2.b.x, var_0 > _wgslsmith_div_i32(var_0, 21513i), all(!select(global2.b.zz, global2.b.zx, global2.b.xx))), 0i & (2147483647i | var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<u32>(firstLeadingBit(global4.x), 54573u, 17343u, 1u)), vec3<i32>(-1i) * -vec3<i32>(abs(10226i), -var_4.c, _wgslsmith_sub_i32(46402i, var_3.x)), 0u);
}

