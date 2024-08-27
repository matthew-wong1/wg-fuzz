struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-1i, 1i, -54343i, 2147483647i), vec4<i32>(31597i, 0i, 16582i, -18652i));

var<private> global1: vec2<i32> = vec2<i32>(-1i, -34637i);

var<private> global2: array<u32, 17>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global4: array<vec3<f32>, 12>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    return arg_2.x <= ~(~(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    return !(!vec4<bool>(any(arg_0.b), false, true, func_3(!global3.xzx, arg_0, ~u_input.a)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1((arg_0.x != ((false & global3.x) & (u_input.a.x < u_input.d))) & true, vec2<bool>(true, func_2(Struct_1(true, vec2<bool>(true, arg_0.x), u_input.c.wy, vec2<f32>(-160f, 1743f))).x | func_2(Struct_1(global3.x, vec2<bool>(arg_0.x, global3.x), u_input.c.yw, vec2<f32>(715f, -437f))).x), _wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.c.ww, u_input.c.xz), u_input.c.ww) >> (~(~(u_input.a << (vec2<u32>(arg_1.x, 28989u) % vec2<u32>(32u)))) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(floor(-1029f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(921f)), _wgslsmith_div_f32(-1000f, 955f))))));
    global4 = array<vec3<f32>, 12>();
    let var_1 = false;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(global4[_wgslsmith_index_u32(4294967295u, 12u)], vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), -1000f, 210f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(u_input.b, 12u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(64859u, 12u)] * global4[_wgslsmith_index_u32(4294967295u, 12u)]))))), global4[_wgslsmith_index_u32(~(u_input.a.x << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46382u, 17u)], 17u)] % 32u)), 12u)]);
    let var_3 = Struct_1(all(vec3<bool>(all(arg_0), var_0.b.x, true)), !var_0.b, _wgslsmith_mod_vec2_i32(var_0.c ^ (vec2<i32>(-1i) * -var_0.c), select(abs(u_input.c.wy), u_input.c.zx, var_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-129f - _wgslsmith_f_op_f32(f32(-1f) * -870f)), 1060f)));
    return Struct_1(func_3(func_2(var_3).yzz, var_3, firstLeadingBit(arg_1.zx)), var_3.b, u_input.c.yw, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-516f * -1162f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1038f, var_2.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(586f, var_3.d.x) * var_2.xy))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = reverseBits(-abs(u_input.c.wwx));
    global3 = select(!(!vec4<bool>(u_input.a.x != 73577u, true, all(arg_1.b), arg_1.a)), vec4<bool>(true, !arg_2, true, true), arg_1.a);
    var var_1 = func_4(func_2(Struct_1(select(0i != arg_1.c.x, global3.x, false), global3.xz, var_0.zy, arg_1.d)), firstLeadingBit(abs(vec3<u32>(select(arg_0.x, u_input.d, arg_2), firstTrailingBit(u_input.b), ~global2[_wgslsmith_index_u32(arg_0.x, 17u)]))), reverseBits(arg_1.c.x));
    var_1 = Struct_1(arg_3 || arg_1.b.x, !arg_1.b, select(firstTrailingBit(~u_input.c.xw), arg_1.c, arg_2), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d)) * vec2<f32>(_wgslsmith_f_op_f32(min(953f, -1206f)), _wgslsmith_f_op_f32(-arg_1.d.x))), vec2<f32>(-1889f, -2020f)));
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(min(0u, 1u) & arg_0.x, ~4294967295u >> (global2[_wgslsmith_index_u32(select(7270u, u_input.a.x, arg_3), 17u)] % 32u)), max(arg_0.x, u_input.b)), 17u)];
    return func_4(!(!vec4<bool>(true, arg_2 & var_1.a, !global3.x, true)), ~(countOneBits(countOneBits(vec3<u32>(1u, 0u, u_input.d))) >> (~(~vec3<u32>(global2[_wgslsmith_index_u32(107474u, 17u)], 54295u, arg_0.x)) % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.xzy, vec3<i32>(var_0.x, var_0.x, global1.x)), u_input.c.wyx) ^ 1i);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec2<f32> {
    global1 = abs(~(~vec2<i32>(~arg_2.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-35646i, arg_0), vec2<i32>(arg_1, -1i)))));
    let var_0 = false;
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_1(true, global3.yz, u_input.c.yy, _wgslsmith_f_op_vec2_f32(func_5(u_input.c.x, global1.x, func_1(vec2<u32>(_wgslsmith_mod_u32(14653u, u_input.a.x), ~global2[_wgslsmith_index_u32(58940u, 17u)]), Struct_1(true, vec2<bool>(global3.x, false), -vec2<i32>(-20169i, u_input.c.x), _wgslsmith_div_vec2_f32(vec2<f32>(1104f, 407f), vec2<f32>(1476f, -2057f))), false, -global1.x < global1.x), ~global2[_wgslsmith_index_u32(firstTrailingBit(46329u), 17u)])));
    let var_2 = -u_input.c.x;
    global3 = vec4<bool>((global3.x && var_1.b.x) != (true & var_1.a), true, ~23820u != max(4294967295u << (u_input.a.x % 32u), u_input.b), 3140i <= var_2);
    var_0 = false;
    var var_3 = firstTrailingBit(u_input.c.zzx);
    global0 = array<vec4<i32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, countOneBits(_wgslsmith_mod_vec3_i32(~max(u_input.c.zxw, vec3<i32>(-364i, -1i, 2147483647i)), -abs(u_input.c.xzx))));
}

