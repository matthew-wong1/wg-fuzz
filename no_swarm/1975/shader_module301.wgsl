struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: Struct_2;

var<private> global2: array<u32, 1> = array<u32, 1>(0u);

var<private> global3: Struct_2;

var<private> global4: vec2<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> bool {
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<i32>(select(~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), -63602i, !any(vec3<bool>(global3.c.b, arg_1.b, false))), 1i) >> (abs(~vec2<u32>(global2[_wgslsmith_index_u32(5596u, 1u)], ~0u)) % vec2<u32>(32u));
    let var_1 = select(select(vec4<bool>(1i > (var_0.x << (4294967295u % 32u)), (global0.x && false) && false, true, any(select(global0.xy, vec2<bool>(global1.c.b, true), global0.yy))), vec4<bool>(global1.b.b, all(vec3<bool>(true, global1.b.b, true)), any(vec3<bool>(true, false, arg_1.b)), !(true | arg_0.c.b)), func_3(!arg_1.b, vec3<f32>(arg_0.c.a.x, _wgslsmith_f_op_f32(global3.c.a.x * global3.c.a.x), _wgslsmith_f_op_f32(global1.b.a.x * -1000f)))), !vec4<bool>((global3.b.b | arg_1.b) & (global3.b.b | global1.c.b), arg_1.b, all(vec4<bool>(global3.c.b, true, arg_0.c.b, global0.x)), !arg_1.b), true);
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(max(u_input.d, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -64752i, u_input.b.x, 44125i), vec4<i32>(34805i, u_input.a, u_input.b.x, u_input.b.x)), _wgslsmith_sub_i32(var_0.x, u_input.a), -9632i), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(84498i, -1929i, 0i, 37821i), vec4<i32>(-1636i, 2147483647i, var_0.x, 11258i)))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(25537i, 3207i, 10520i), u_input.b), var_0.x, reverseBits(u_input.b.x)), select(~vec4<i32>(var_0.x, 2147483647i, u_input.d, -1i), min(vec4<i32>(var_0.x, u_input.a, 0i, -39116i), vec4<i32>(u_input.b.x, var_0.x, u_input.b.x, 0i)), !global3.b.b)), firstTrailingBit(vec4<i32>(42099i, 40558i, u_input.a, 1i)) << ((select(vec4<u32>(global1.c.c, 91750u, 4294967295u, 1u), vec4<u32>(1u, global2[_wgslsmith_index_u32(global1.b.c, 1u)], 0u, 37857u), vec4<bool>(global3.c.b, false, true, global3.b.b)) & (vec4<u32>(67560u, 1u, arg_0.b.c, global3.c.c) >> (vec4<u32>(4294967295u, 39936u, 40544u, 69737u) % vec4<u32>(32u)))) % vec4<u32>(32u))), abs((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, var_0.x, u_input.a, 37332i), vec4<i32>(28522i, u_input.a, -2147483647i, 0i), vec4<i32>(u_input.b.x, 9455i, var_0.x, 21639i)) | -vec4<i32>(u_input.a, -2147483647i, u_input.b.x, 0i)) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_1.c, global3.c.c, u_input.c), vec4<u32>(14107u, 4294967295u, arg_0.c.c, global1.c.c)) % vec4<u32>(32u))));
    global0 = !var_1.xyz;
    var var_3 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_3.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a.x, 919f, 541f)) - _wgslsmith_f_op_vec3_f32(floor(arg_0.c.a))))), all(vec2<bool>(arg_0.b.b, var_3.b)), abs(53043u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global1 = arg_0;
    var var_0 = arg_0;
    let var_1 = vec4<i32>(~14938i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.d, -17666i & u_input.d), ~1i, u_input.a, _wgslsmith_mult_i32(1i, 1i)), countOneBits(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -19322i, 1i), ~0i, u_input.a, ~(-2147483647i)))), ~(~(-11235i)));
    var_0 = arg_0;
    let var_2 = arg_0.c.c;
    return Struct_2(var_0.b.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + global3.c.a.x)), -738f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false, var_2), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0.a))), _wgslsmith_f_op_vec3_f32(-global1.a))), false, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_2), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.c, u_input.c), vec2<u32>(var_2, 1u))), ~_wgslsmith_sub_u32(82971u, global1.b.c))));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = u_input.b.x;
    var var_1 = max(~(~vec2<u32>(9260u, 0u)) ^ max(firstLeadingBit(vec2<u32>(48993u, arg_2.c.c)), vec2<u32>(0u, arg_2.b.c) ^ vec2<u32>(68660u, arg_2.b.c)), vec2<u32>(~(45809u << (global3.b.c % 32u)), ~arg_2.c.c | 1u)) | (vec2<u32>(arg_3, max(_wgslsmith_clamp_u32(119437u, 67934u, 51465u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.c, arg_3, arg_3), vec3<u32>(0u, 92059u, arg_3)))) >> (_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(488u, global2[_wgslsmith_index_u32(global1.b.c, 1u)])), ~vec2<u32>(global1.c.c, 1u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global1.b.c), vec2<u32>(global2[_wgslsmith_index_u32(1u, 1u)], arg_2.c.c), vec2<u32>(4294967295u, global1.b.c)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global3 = arg_2;
    global2 = array<u32, 1>();
    global0 = !(!(!select(!vec3<bool>(arg_2.c.b, false, arg_0.x), select(arg_0.zxz, arg_0.zzw, arg_0.wzx), global1.c.b || false)));
    return Struct_2(vec3<f32>(global1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, 730f)) + -1460f)), -550f), global1.b, global1.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = -select(vec3<i32>(u_input.d, 21284i, -(~u_input.d)), vec3<i32>(-1i, -u_input.b.x, 0i), select(select(!vec3<bool>(arg_1, true, global3.b.b), !vec3<bool>(global1.c.b, true, true), all(vec3<bool>(true, global1.b.b, true))), !vec3<bool>(arg_1, arg_1, global1.c.b), true));
    var var_1 = global1.c.a;
    let var_2 = any(select(!(!select(vec4<bool>(global0.x, true, false, false), vec4<bool>(true, false, true, false), false)), !select(vec4<bool>(true, true, arg_1, false), select(vec4<bool>(arg_1, global1.b.b, true, arg_1), vec4<bool>(arg_1, global0.x, global3.c.b, false), vec4<bool>(arg_1, false, true, arg_1)), vec4<bool>(true, false, arg_1, global0.x)), vec4<bool>(_wgslsmith_f_op_f32(924f * arg_2.x) < -1308f, true, firstLeadingBit(1i) > (u_input.d ^ 1i), _wgslsmith_f_op_f32(min(global1.c.a.x, 1601f)) < _wgslsmith_f_op_f32(-global3.b.a.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-global3.a);
    let var_4 = func_5(vec4<bool>(all(select(!global0.zz, vec2<bool>(global1.b.b, true), !global3.b.b)), true | all(!vec3<bool>(true, var_2, false)), global1.c.b, true), global3.b.a.x, func_4(Struct_2(_wgslsmith_f_op_vec3_f32(global3.a - _wgslsmith_f_op_vec3_f32(-var_3)), global1.c, func_2(Struct_2(global3.a, global3.b, Struct_1(vec3<f32>(global3.a.x, -513f, -1267f), global3.c.b, 1u)), global3.c)), func_2(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 302f, -1150f) - vec3<f32>(global1.c.a.x, 128f, global1.a.x)), global3.c, global1.b), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(388f, global3.b.a.x, -158f)), !global1.c.b, ~22783u))), max(5038u << (global1.c.c % 32u), 1u));
    return firstTrailingBit(abs(~vec4<u32>(arg_0.x, 0u, ~global2[_wgslsmith_index_u32(1u, 1u)], ~global2[_wgslsmith_index_u32(39275u, 1u)])));
}

fn func_6(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = func_2(arg_2, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.c.a * vec3<f32>(global4.x, global3.a.x, -381f)) - global1.a), true, ~(~max(0u, arg_1))));
    global0 = !select(!vec3<bool>(all(vec4<bool>(global3.c.b, false, true, global3.c.b)), true, true), vec3<bool>(func_2(arg_2, global3.c).b, u_input.b.x <= ~(-25149i), all(global0.yy)), true);
    global1 = func_4(func_5(vec4<bool>(true, true, func_2(arg_2, func_5(vec4<bool>(false, global1.c.b, global1.c.b, true), -107f, arg_2, 26164u).b).b, all(global0.yz)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_2.c.a.x, 271f)))), _wgslsmith_f_op_f32(-1040f + _wgslsmith_f_op_f32(trunc(global4.x))), !arg_2.c.b)), Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.a.x, var_0.a.x, global1.c.a.x) - var_0.a))), Struct_1(vec3<f32>(global1.b.a.x, var_0.a.x, arg_2.a.x), arg_2.b.b, ~61180u), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global4.x, -194f, 366f), vec3<f32>(-657f, 1000f, 1919f)), true, arg_0.x)), 37472u), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(global4.x, global1.c.a.x, true)), global3.b.a.x, -444f))), true, select(~4294967295u >> (func_1(arg_0.xx, global3.b.b, arg_2.a.yy).x % 32u), ~(1u << (0u % 32u)), (1u >> (global2[_wgslsmith_index_u32(4294967295u, 1u)] % 32u)) >= ~60497u)));
    var var_1 = vec3<i32>(-1i) * -abs(min(~vec3<i32>(u_input.b.x, 0i, 2147483647i), u_input.b));
    let var_2 = arg_0;
    return _wgslsmith_clamp_vec4_i32(firstTrailingBit(-_wgslsmith_div_vec4_i32(-vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -10651i, var_1.x, 106396i), vec4<i32>(2147483647i, var_1.x, -1i, 0i)))), vec4<i32>(~(~u_input.b.x) ^ max(u_input.a, -20371i), ~11386i, var_1.x, max(select(var_1.x, firstLeadingBit(1i), arg_2.c.b), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, var_1.x, u_input.a, u_input.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(28926i, 33327i, -2147483647i, -31145i), vec4<i32>(1i, u_input.b.x, u_input.d, u_input.b.x))))), max(~max(vec4<i32>(-22759i, u_input.d, var_1.x, 1i), vec4<i32>(-16711i, u_input.a, u_input.b.x, var_1.x)) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, -1i, u_input.b.x, var_1.x), vec4<i32>(-2147483647i, u_input.d, u_input.d, u_input.b.x)), _wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, var_1.x, 83270i, var_1.x), ~max(vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.b.x), vec4<i32>(var_1.x, var_1.x, 47870i, u_input.b.x)))));
}

fn func_7(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-global4.x);
    var var_1 = vec3<bool>(true, global3.b.b, true && ((0u > min(global1.b.c, u_input.c)) | (select(global2[_wgslsmith_index_u32(global1.b.c, 1u)], global3.b.c, global3.c.b) >= 0u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-global3.c.a.yx);
    let var_3 = vec3<u32>(1u, _wgslsmith_mult_u32(global3.b.c, 66643u) & (u_input.c << (abs(abs(global2[_wgslsmith_index_u32(1u, 1u)])) % 32u)), global1.b.c);
    global4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, global1.b.a.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, var_2.x) + global3.a.yx), func_4(Struct_2(global1.a, Struct_1(vec3<f32>(2234f, 817f, 437f), true, 72424u), Struct_1(vec3<f32>(-1541f, global1.b.a.x, 926f), global3.b.b, 57008u)), global3.c).c.a.zy, vec2<bool>(false, false))), select(select(vec2<bool>(true, global3.b.b), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x)), select(vec2<bool>(false, false), global0.yx, false), func_2(Struct_2(global3.b.a, Struct_1(global1.b.a, global3.b.b, 72626u), Struct_1(global1.a, false, global1.b.c)), Struct_1(global1.c.a, false, 1u)).b))) + vec2<f32>(-2165f, _wgslsmith_div_f32(_wgslsmith_div_f32(global4.x, global3.c.a.x), -1409f))), _wgslsmith_f_op_vec2_f32(global3.c.a.xz * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -274f), var_2.x)), var_1.x));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1512f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1430f, global4.x) * _wgslsmith_f_op_f32(sign(-1163f))))), global1.b, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global1.a.x, 1165f) * vec3<f32>(109f, 358f, global1.c.a.x)) * _wgslsmith_f_op_vec3_f32(round(global1.a))), true, u_input.c));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1761f, -772f, _wgslsmith_f_op_f32(-global1.a.x)))), arg_1.a.x < _wgslsmith_f_op_f32(step(global1.c.a.x, arg_0.b.a.x)), ~max(4294967295u, 40634u));
    global3 = arg_0;
    let var_1 = countOneBits(vec2<u32>(41628u, global2[_wgslsmith_index_u32(max(1u & var_0.c, ~5818u), 1u)]));
    let var_2 = ~var_1;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1128f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a.x * 1225f) + arg_1.b.a.x))) * global3.c.a.x);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-global3.b.a), arg_1.c, Struct_1(_wgslsmith_f_op_vec3_f32(select(func_2(Struct_2(vec3<f32>(arg_1.a.x, global1.b.a.x, arg_0.c.a.x), global3.c, Struct_1(vec3<f32>(global1.b.a.x, 844f, global4.x), arg_0.c.b, 7790u)), global1.c).a, vec3<f32>(_wgslsmith_f_op_f32(step(var_0.a.x, 1290f)), 564f, _wgslsmith_f_op_f32(-arg_0.c.a.x)), select(!vec3<bool>(true, arg_2.x, true), vec3<bool>(true, global0.x, arg_1.c.b), !vec3<bool>(true, global0.x, false)))), !func_2(arg_0, func_4(arg_0, Struct_1(vec3<f32>(581f, 804f, var_3), true, arg_1.b.c)).c).b, func_7(25431i | reverseBits(u_input.a), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, 1i, 19600i, 55099i), firstTrailingBit(vec4<i32>(u_input.b.x, -38094i, -18287i, 47122i)))).b.c));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_8(func_7(1i, func_6(func_1(~vec2<u32>(33390u, u_input.c), false, global3.b.a.zy), _wgslsmith_sub_u32(4294967295u, 13595u), Struct_2(global1.a, Struct_1(global3.b.a, true, global1.c.c), global1.b))), func_4(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(global1.b.a - vec3<f32>(390f, -844f, 688f)), func_5(vec4<bool>(global0.x, false, global3.c.b, global3.b.b), global4.x, Struct_2(vec3<f32>(global3.a.x, -600f, -2015f), global1.c, global1.c), 45237u).b, global1.b), func_5(!vec4<bool>(true, true, global0.x, global3.c.b), _wgslsmith_f_op_f32(-472f * -507f), func_5(vec4<bool>(global0.x, false, global1.c.b, false), global4.x, Struct_2(vec3<f32>(global3.b.a.x, global4.x, 444f), global1.c, Struct_1(vec3<f32>(947f, 1436f, global1.a.x), global3.b.b, 0u)), global2[_wgslsmith_index_u32(40855u, 1u)]), u_input.c).b), global1.b), !vec2<bool>(global3.b.b, global1.c.b));
    global4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.c.a.zz)));
    global0 = !(!select(select(select(vec3<bool>(false, global3.b.b, true), vec3<bool>(false, global3.b.b, global1.b.b), vec3<bool>(global0.x, true, global3.b.b)), !vec3<bool>(false, global0.x, false), global1.c.b), select(vec3<bool>(global1.b.b, false, false), select(vec3<bool>(false, global3.b.b, false), vec3<bool>(false, global1.b.b, global1.b.b), vec3<bool>(true, global3.c.b, false)), !vec3<bool>(global1.c.b, global0.x, false)), !select(vec3<bool>(global3.c.b, global3.b.b, true), vec3<bool>(true, global1.c.b, global0.x), vec3<bool>(false, false, false))));
    global4 = _wgslsmith_f_op_vec2_f32(sign(func_7(u_input.b.x, vec4<i32>(4872i, u_input.d, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -2147483647i)), i32(-1i) * -2147483647i)).a.xy));
    let x = u_input.a;
    s_output = StorageBuffer(-1996f, global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * global1.a.x)));
}

