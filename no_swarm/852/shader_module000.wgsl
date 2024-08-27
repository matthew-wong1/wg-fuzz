struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, true, false));

var<private> global2: array<f32, 27> = array<f32, 27>(-2772f, -355f, 287f, 466f, -595f, 236f, -790f, 355f, -1000f, 202f, -630f, 605f, 1375f, 413f, 1618f, 483f, -1404f, -214f, 230f, -1698f, 359f, -1019f, -455f, -1338f, -1520f, -308f, -604f);

var<private> global3: Struct_3;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1() -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x, u_input.b), 27u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~40075u, 27u)])))), _wgslsmith_f_op_f32(trunc(global3.b)), global3.b);
}

fn func_3(arg_0: f32, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_3(global3.a, 2103f, -(vec3<i32>(0i, _wgslsmith_dot_vec3_i32(global3.c, global3.c), 5437i) ^ ~(global3.c >> (vec3<u32>(36057u, 48839u, u_input.b) % vec3<u32>(32u)))));
    var var_1 = -global3.c.x;
    var_1 = select(select(-1i << (min(u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(45296u, 0u, u_input.d.x), vec3<u32>(64985u, 43671u, 31489u))) % 32u), var_0.c.x, global1.a.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.c), _wgslsmith_div_vec3_i32(select(~var_0.c, var_0.c, true), var_0.c)), false);
    global3 = Struct_3(global3.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1314f - -262f), _wgslsmith_div_f32(-521f, global3.b))), _wgslsmith_f_op_f32(global3.b + -161f)) + global2[_wgslsmith_index_u32(6620u, 27u)]), select(_wgslsmith_mod_vec3_i32(vec3<i32>(44799i, global3.c.x, -global3.c.x), reverseBits(-vec3<i32>(u_input.a, global3.c.x, u_input.a))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-2147483647i, var_0.c.x, 61210i)), global3.c, vec3<i32>(2147483647i, 32592i, var_0.c.x) >> (u_input.e.wzy % vec3<u32>(32u)))), select(select(vec3<bool>(global1.a.x, global3.a.a.x, false), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(var_0.a.a.x, global3.a.a.x, true), var_0.a.a.xxw), select(global1.a.zzx, global3.a.a.yyw, var_0.a.a.x)), !vec3<bool>(true, arg_1, var_0.a.a.x), vec3<bool>(false, all(vec2<bool>(true, true)), true))));
    global3 = Struct_3(Struct_1(select(select(global1.a, !vec4<bool>(true, global1.a.x, arg_1, arg_1), !global3.a.a), select(!vec4<bool>(global1.a.x, arg_1, true, global1.a.x), global1.a, global1.a.x | true), var_0.a.a)), 521f, vec3<i32>(select(~(global3.c.x >> (u_input.c.x % 32u)), 15131i, var_0.c.x == 3819i), i32(-1i) * -34158i, -2147483647i));
    return select(global1.a.zy, !(!global3.a.a.zy), global3.a.a.ww);
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = !select(func_3(-599f, _wgslsmith_mod_u32(u_input.d.x, 14091u) < _wgslsmith_mult_u32(0u, 1u)), select(vec2<bool>(global1.a.x, false), !global1.a.wz, -25997i == (43673i | u_input.a)), all(select(select(global1.a.xzy, vec3<bool>(global1.a.x, global3.a.a.x, global3.a.a.x), vec3<bool>(global3.a.a.x, true, false)), select(global1.a.www, vec3<bool>(true, global3.a.a.x, global1.a.x), false), global3.a.a.wxz)));
    let var_2 = true;
    global0 = ~abs(u_input.e.x);
    global0 = u_input.c.x;
    return Struct_1(select(select(vec4<bool>(false & global1.a.x, false, !var_2, true), !select(global1.a, vec4<bool>(false, var_1.x, var_2, true), false), !var_1.x | true), !select(!global1.a, !vec4<bool>(var_2, true, var_2, false), global1.a.x), global3.a.a.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_3) -> f32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_mult_u32(select(69766u, ~66299u, false), u_input.e.x) != 22516u;
    let var_2 = var_0;
    var_1 = arg_3.a.a.x;
    let var_3 = Struct_2(var_0.a);
    return _wgslsmith_f_op_vec4_f32(func_1()).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())))), func_2(), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1972f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b))), _wgslsmith_f_op_f32(-3159f + _wgslsmith_f_op_f32(-316f * global2[_wgslsmith_index_u32(u_input.d.x, 27u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1374f, 571f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~51556u, 27u)])), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(33207u, _wgslsmith_sub_u32(64456u, u_input.c.x)), 27u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b, 510f) - 438f), global2[_wgslsmith_index_u32(countOneBits(30957u), 27u)]))), Struct_3(global3.a, 629f, _wgslsmith_sub_vec3_i32(global3.c, global3.c))));
    let var_1 = _wgslsmith_div_i32(reverseBits(_wgslsmith_add_i32(1i, global3.c.x)), reverseBits(global3.c.x));
    var var_2 = global1.a.xx;
    var var_3 = Struct_3(func_2(), global2[_wgslsmith_index_u32(4294967295u, 27u)], firstTrailingBit(min(global3.c, abs(global3.c) ^ global3.c)));
    var var_4 = Struct_2(func_2());
    var_0 = _wgslsmith_f_op_vec4_f32(func_1()).x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c & ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.c.x, -2147483647i, 6503i) >> (vec3<u32>(9860u, u_input.e.x, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(0i, var_1, var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3.b + var_3.b), global3.b))), select(~vec3<u32>(0u, abs(u_input.d.x), ~1u), u_input.c.wzy, !(max(-42997i, var_3.c.x) <= (i32(-1i) * -21099i))), _wgslsmith_mult_vec2_i32(-(global3.c.yy & select(var_3.c.zx, vec2<i32>(-60126i, var_1), true)), var_3.c.yz ^ _wgslsmith_div_vec2_i32(-vec2<i32>(var_3.c.x, global3.c.x), vec2<i32>(-54737i, var_1) | vec2<i32>(-20315i, -8525i))));
}

