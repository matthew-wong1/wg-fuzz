struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: array<Struct_5, 19>;

var<private> global2: Struct_3;

var<private> global3: array<i32, 11> = array<i32, 11>(2147483647i, 2147483647i, 26636i, 1i, 0i, 1i, 2147483647i, 0i, 21553i, i32(-2147483648), -23545i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = global2.a.b.xx;
    var var_1 = Struct_1(global2.a.a.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.d.b, 207f)) - _wgslsmith_div_f32(global2.a.d.b, _wgslsmith_f_op_f32(f32(-1f) * -366f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a.d.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(912f))))), !select(select(select(global0.wzy, vec3<bool>(global2.a.d.c.x, true, false), true), vec3<bool>(global0.x, false, arg_1.x), global2.a.a.c), vec3<bool>(any(global2.a.c.xxz), true, any(vec2<bool>(false, arg_1.x))), vec3<bool>(any(global0.yww), any(arg_1), true)), ~_wgslsmith_mod_vec4_u32(global2.a.a.d, vec4<u32>(abs(0u), 4294967295u, 1u, ~global2.a.d.d.x)), vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(3353u, 11u)], ~_wgslsmith_sub_i32(countOneBits(global3[_wgslsmith_index_u32(44092u, 11u)]), abs(2147483647i))));
    let var_2 = Struct_4(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(70803i, u_input.c.x), -u_input.c.xw) | (i32(-1i) * -var_1.e.x), i32(-1i) * -25113i));
    let var_3 = global2.a.b.x ^ ~(~(~arg_0.x));
    let var_4 = _wgslsmith_div_u32(23184u, reverseBits(var_1.d.x));
    return 2147483647i;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = !(!vec4<bool>(global0.x, false, global2.a.b.x > ~u_input.a, (u_input.c.x == u_input.c.x) && (-29905i <= u_input.c.x)));
    global0 = var_0;
    let var_1 = vec3<i32>(-global3[_wgslsmith_index_u32(1u, 11u)], 0i, i32(-1i) * -8232i);
    global3 = array<i32, 11>();
    var var_2 = select(!(!global0.wzx), !vec3<bool>(any(!vec2<bool>(global0.x, false)), all(!vec2<bool>(global0.x, true)), var_0.x), !var_0.yyz);
    return Struct_1(-_wgslsmith_add_i32(_wgslsmith_sub_i32(func_3(global2.a.d.d.xy, vec2<bool>(var_2.x, false)), ~var_1.x), 7111i), _wgslsmith_f_op_f32(round(global2.a.d.b)), global0.zyy, global2.a.d.d, ~(~(-_wgslsmith_clamp_vec3_i32(u_input.c.yxw, vec3<i32>(global3[_wgslsmith_index_u32(1u, 11u)], var_1.x, -35717i), u_input.c.wxz))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = true;
    global0 = select(select(!global2.a.c, select(global2.a.c, global2.a.c, !var_0), false), select(select(global2.a.c, select(global2.a.c, global2.a.c, global2.a.c), true), select(select(vec4<bool>(var_0, true, false, true), !global2.a.c, false && global0.x), select(global2.a.c, global2.a.c, global2.a.c.x), select(global2.a.c, !global2.a.c, vec4<bool>(global0.x, false, false, arg_2.c.x))), vec4<bool>(any(vec4<bool>(arg_1.c, arg_2.c.x, arg_1.c, var_0)), global0.x, !(!var_0), !all(arg_2.c.xz))), vec4<bool>(~select(1u, 0u, var_0) <= 0u, var_0 && var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.a.b, arg_2.b)) - _wgslsmith_f_op_f32(global2.a.a.b - arg_2.b)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a.b * global2.a.d.b)), !arg_1.c));
    var var_1 = reverseBits(~arg_2.d);
    let var_2 = 0u;
    global1 = array<Struct_5, 19>();
    return vec4<bool>(arg_1.c, false, func_2(arg_2.e.xx).c.x, arg_1.c);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> Struct_3 {
    var var_0 = true;
    var var_1 = countOneBits(global2.a.d.d.zwy);
    global0 = func_4(~51346u, global1[_wgslsmith_index_u32(~var_1.x, 19u)], func_2(vec2<i32>(global2.a.a.a, ~(~2147483647i))));
    global3 = array<i32, 11>();
    var var_2 = !(true && func_2(vec2<i32>(-global2.a.d.e.x, 6152i)).c.x);
    return Struct_3(Struct_2(Struct_1(_wgslsmith_add_i32(arg_1, global3[_wgslsmith_index_u32(global2.a.d.d.x, 11u)]) | reverseBits(global2.a.d.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(353f * global2.a.d.b) + global2.a.d.b), vec3<bool>(select(false, false, global2.a.d.c.x), arg_0.x, true), vec4<u32>(_wgslsmith_clamp_u32(var_1.x, u_input.a, 1u), global2.a.d.d.x, select(0u, var_1.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(7978u, 4294967295u, 4294967295u, global2.a.d.d.x), global2.a.a.d)), _wgslsmith_mult_vec3_i32(-global2.a.d.e, -global2.a.a.e)), ~global2.a.a.d.wwz, !(!func_4(1u, global1[_wgslsmith_index_u32(26554u, 19u)], Struct_1(u_input.c.x, -149f, vec3<bool>(global2.a.c.x, false, false), vec4<u32>(0u, global2.a.b.x, 17891u, var_1.x), u_input.c.yyx))), func_2(vec2<i32>(func_2(u_input.c.zz).a, 1i))), any(global0.wxz));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(global2.a.c, 55335i, global2.a.d.e.x);
    var var_0 = reverseBits(vec3<u32>(0u, _wgslsmith_sub_u32(global2.a.a.d.x, _wgslsmith_add_u32(~1u, u_input.a)), u_input.b));
    var var_1 = Struct_5(~abs(var_0.yz), -1i, !all(vec2<bool>(!global0.x, global0.x)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~11262u, 1u), 19u)];
    var_0 = ~vec3<u32>(u_input.a & firstLeadingBit(40158u), ~(~49596u), max(4294967295u, ~36468u)) >> (min(_wgslsmith_clamp_vec3_u32(~countOneBits(global2.a.a.d.yyw), ~(~global2.a.b), vec3<u32>(~var_2.a.x, ~38265u, ~var_2.a.x)), ~vec3<u32>(var_1.a.x, min(35855u, 16670u), ~4294967295u)) % vec3<u32>(32u));
    let var_3 = func_1(func_1(select(vec4<bool>(global2.a.c.x, func_2(global2.a.a.e.yx).c.x, false, global2.a.d.c.x), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, false, global0.x, false), select(vec4<bool>(true, global0.x, global2.a.d.c.x, true), vec4<bool>(var_2.c, global2.a.a.c.x, var_1.c, false), var_1.c)), false), u_input.c.x, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(19491u, var_1.a.x), 11u)]).a.c, ~(global3[_wgslsmith_index_u32(countOneBits(func_2(global2.a.a.e.yy).d.x), 11u)] & global3[_wgslsmith_index_u32(8276u, 11u)]), 26205i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_3.a.d.b)), -435f)))) - -2461f), var_3.a.a.b, _wgslsmith_div_i32(-func_1(select(vec4<bool>(true, true, global2.a.d.c.x, var_2.c), global2.a.c, vec4<bool>(var_1.c, var_2.c, var_3.a.a.c.x, global0.x)), _wgslsmith_div_i32(global2.a.d.a, 0i), min(var_3.a.d.a, -13092i)).a.a.a, var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-161f, var_3.a.a.b)));
}

