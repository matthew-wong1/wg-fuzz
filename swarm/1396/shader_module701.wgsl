struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 1>;

var<private> global2: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<bool> {
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    var var_0 = Struct_1(_wgslsmith_clamp_u32(max(_wgslsmith_clamp_u32(20321u | arg_1.a, arg_0.x << (u_input.d % 32u), 4294967295u), ~(4294967295u >> (global0.a % 32u))), ~abs(~global0.a), global0.a), -global0.b, vec3<i32>(-1i, 1i, 0i));
    let var_1 = min(u_input.b, _wgslsmith_sub_vec4_i32(abs(select(u_input.b, select(vec4<i32>(1i, global0.b, 1i, 2147483647i), vec4<i32>(global0.c.x, -8432i, global0.b, global1[_wgslsmith_index_u32(4294967295u, 1u)]), true), vec4<bool>(true, true, true, true))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, arg_1.c.x, -70758i), arg_1.c) << (31292u % 32u), -1i, min(_wgslsmith_clamp_i32(0i, global0.b, arg_1.c.x), ~var_0.b), arg_1.b)));
    let var_2 = abs(countOneBits(vec4<u32>(~(~10735u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global0.a, 0u, 83975u), vec4<u32>(arg_1.a, 1u, 28111u, arg_1.a)) << (u_input.d % 32u), ~16313u, countOneBits(firstLeadingBit(u_input.d)))));
    return select(select(vec2<bool>(_wgslsmith_f_op_f32(step(-547f, -1121f)) == 392f, true), global2.zy, vec2<bool>(global2.x, any(vec4<bool>(false, true, global2.x, false)))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, global2.x), global2.ww), vec2<bool>(global2.x, global2.x), select(global2.xz, vec2<bool>(true, global2.x), global2.x)), global2.xz, !(!global2.yx)), vec2<bool>(all(!global2.yw), all(vec4<bool>(true, false, global2.x, true))), !vec2<bool>(all(global2.zzz), all(vec4<bool>(false, global2.x, true, true)))), global2.xx);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> i32 {
    var var_0 = Struct_1(0u, arg_1.b, min(u_input.b.zzx, max(arg_1.c, vec3<i32>(_wgslsmith_div_i32(26650i, -25049i), firstLeadingBit(global1[_wgslsmith_index_u32(global0.a, 1u)]), u_input.b.x))));
    var var_1 = Struct_1(reverseBits(arg_1.a), _wgslsmith_sub_i32(-(~global0.c.x), arg_1.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -global0.c, max(firstTrailingBit(vec3<i32>(-55547i, arg_1.b, global0.b)), countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(19998u, 1u)], var_0.c.x, global0.c.x))) & min(abs(vec3<i32>(u_input.b.x, arg_1.b, -1331i)), u_input.b.yzw)));
    var var_2 = Struct_1(~var_0.a | max(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 12023u), vec2<u32>(0u, u_input.d))), 1u), _wgslsmith_clamp_i32(0i, -2147483647i, 0i), u_input.b.www);
    var var_3 = Struct_1(var_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, firstTrailingBit(-u_input.a.x), global1[_wgslsmith_index_u32(var_2.a, 1u)], var_2.c.x), abs(firstTrailingBit(vec4<i32>(-2147483647i, arg_1.b, -23533i, 2147483647i)))), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, global1[_wgslsmith_index_u32(var_1.a, 1u)], 27922i), ~vec4<i32>(var_0.c.x, arg_1.c.x, -7949i, global1[_wgslsmith_index_u32(var_1.a, 1u)])), var_0.b, firstTrailingBit(-1i)));
    let var_4 = arg_1;
    return var_4.b;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<i32> {
    global2 = vec4<bool>(global2.x | true, (!global2.x && !(!global2.x)) & global2.x, all(select(select(select(global2.wyy, global2.zww, vec3<bool>(true, true, true)), global2.wyz, false), vec3<bool>(true, true, true), true)), all(!select(select(global2.zwy, global2.wzw, vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(true, true, true), true)));
    var var_0 = Struct_1(1u, func_4(true, arg_2, func_3(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.a, 22975u), vec2<u32>(1u, 42863u)), arg_2), arg_2.a >> (((global0.a ^ global0.a) & arg_2.a) % 32u)), (vec3<i32>(global1[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_add_i32(2147483647i, -2147483647i), max(global0.c.x, arg_2.b)) >> (abs(vec3<u32>(u_input.d, arg_2.a, arg_0) & vec3<u32>(arg_2.a, 4294967295u, arg_2.a)) % vec3<u32>(32u))) | vec3<i32>(func_4(global2.x, arg_2, global2.zy, u_input.d) >> (arg_2.a % 32u), -global1[_wgslsmith_index_u32(arg_0 ^ global0.a, 1u)], -_wgslsmith_sub_i32(-1i, -27856i)));
    var var_1 = ~(~(~(~(~vec2<u32>(35708u, global0.a)))));
    global1 = array<i32, 1>();
    global0 = Struct_1(u_input.d, 2147483647i, ~max(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.x, -1272i, -2147483647i), u_input.b.wyz), -vec3<i32>(52731i, 24474i, arg_2.b)), vec3<i32>(~arg_2.b, arg_1.x, firstLeadingBit(-8471i))));
    return select(~abs(firstLeadingBit(vec3<i32>(arg_1.x, arg_1.x, var_0.c.x))), select(firstTrailingBit(arg_2.c), var_0.c, any(select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(false, global2.x, true, false), global2.x != global2.x))), vec3<bool>(true, true, global2.x));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~vec3<u32>(global0.a, min(~1u, 0u), ~(global0.a >> (1u % 32u))));
    global0 = Struct_1(u_input.d, countOneBits(-43654i), ~firstTrailingBit(func_2(global0.a, vec2<i32>(0i, global0.b), Struct_1(56150u, 24155i, u_input.b.ywz))) ^ ~u_input.b.yxy);
    global2 = !select(!(!select(vec4<bool>(true, false, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, true), true)), select(!(!vec4<bool>(false, global2.x, global2.x, global2.x)), !(!vec4<bool>(global2.x, false, true, true)), global2.x), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f - -709f)))), _wgslsmith_f_op_f32(min(-492f, -1000f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(-1631f, _wgslsmith_f_op_f32(306f - 811f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-561f)))), vec2<f32>(1f, 1f), select(func_3(vec2<u32>(u_input.d, 35692u), Struct_1(50681u, -22997i, vec3<i32>(u_input.a.x, global0.c.x, 0i))).x, u_input.b.x >= ~global0.c.x, global2.x)))));
    var var_2 = Struct_1(countOneBits(1u), 2147483647i, select(min(select(max(vec3<i32>(global1[_wgslsmith_index_u32(15824u, 1u)], -1i, -3857i), vec3<i32>(u_input.c.x, 1i, u_input.b.x)), vec3<i32>(global0.c.x, 1i, -2147483647i), !global2.zyx), ~(vec3<i32>(global0.c.x, -19641i, 0i) ^ global0.c)), vec3<i32>(func_4(false, Struct_1(var_0.x, -11620i, u_input.b.wzz), global2.yw, ~4294967295u), select(21978i, 2147483647i, global2.x), u_input.b.x), select(global2.yzz, !(!global2.xxz), select(!global2.ywy, global2.zyw, true))));
    return Struct_1(~var_2.a, abs(~func_4(!global2.x, Struct_1(136792u, 2147483647i, var_2.c), global2.wz, ~global0.a)), abs(~vec3<i32>(firstLeadingBit(global0.c.x), max(var_2.b, 43066i), 0i)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    let var_0 = Struct_1(~(arg_0.a << (select(firstLeadingBit(u_input.d), 7426u << (arg_1 % 32u), u_input.d != 1u) % 32u)), _wgslsmith_sub_i32(1i, global0.b), abs(vec3<i32>(~49059i, 1i, 40052i)));
    var var_1 = 362f;
    let var_2 = ~1i;
    let var_3 = Struct_1(arg_1, _wgslsmith_mult_i32(0i, 24601i), global0.c << (_wgslsmith_add_vec3_u32(~vec3<u32>(0u, global0.a, u_input.d), vec3<u32>(1u, var_0.a, 72486u) & (vec3<u32>(arg_0.a, arg_0.a, global0.a) >> (vec3<u32>(u_input.d, 16943u, arg_0.a) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    let var_4 = func_1();
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~7424u & func_5(func_1(), u_input.d, vec2<u32>(u_input.d, 47568u), 2147483647i), _wgslsmith_mod_i32(u_input.b.x, 28174i), _wgslsmith_mult_vec3_i32(~min(global0.c, global0.c), ~(global0.c >> ((vec3<u32>(0u, 38095u, global0.a) | vec3<u32>(global0.a, u_input.d, 69783u)) % vec3<u32>(32u)))));
    global2 = select(!(!vec4<bool>(true && global2.x, !global2.x, true, any(vec3<bool>(true, true, global2.x)))), vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, true || all(global2.yx), any(vec4<bool>(global2.x, global2.x & global2.x, global2.x & false, true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global1[_wgslsmith_index_u32(~40480u, 1u)], -1i, max(-15533i, i32(-1i) * -35033i), ~(-30202i)), 2332i, ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 30890u), global0.a & global0.a), 0u, 0u), vec3<u32>(min(~1014u, global0.a >> (1u % 32u)), select(firstTrailingBit(~u_input.d), (0u << (u_input.d % 32u)) << (0u % 32u), global2.x), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, global0.a), vec3<u32>(4616u, global0.a, 4294967295u)), u_input.d) << (global0.a % 32u)));
}

