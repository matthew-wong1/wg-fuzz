struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(622u, 14115u, 0u, 83205u, 6533u, 4294967295u, 39215u, 11783u, 55317u, 1u, 72290u, 50759u, 11344u, 130572u, 12352u, 19701u, 0u, 25946u);

var<private> global1: Struct_5;

var<private> global2: vec3<i32> = vec3<i32>(1i, 2147483647i, -1i);

var<private> global3: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool) -> bool {
    let var_0 = all(select(!vec4<bool>(!arg_1.b.x, false, arg_1.b.x, arg_1.b.x), vec4<bool>(any(!vec2<bool>(arg_1.b.x, arg_0.c.x)), false, true, false), !select(!arg_0.c, !arg_0.c, arg_0.c.x)));
    var var_1 = ~arg_1.d.a;
    global3 = true;
    var var_2 = select(vec4<bool>(false | arg_1.b.x, arg_2, select(_wgslsmith_f_op_f32(exp2(arg_0.b.a)) == _wgslsmith_f_op_f32(step(arg_0.b.a, -482f)), var_0, false), false), !vec4<bool>(var_0, any(arg_0.c.xzw), any(select(arg_0.c, vec4<bool>(global1.b.x, global1.b.x, arg_1.b.x, arg_2), arg_2)), all(select(vec4<bool>(false, false, global1.b.x, false), vec4<bool>(true, true, arg_1.b.x, arg_0.c.x), vec4<bool>(arg_1.b.x, true, var_0, arg_1.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(411f, _wgslsmith_f_op_f32(arg_0.b.a * arg_0.b.a), any(arg_0.c))), _wgslsmith_f_op_f32(min(1367f, -621f)))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.a))))));
    var var_3 = select(~(0u << (~(~0u) % 32u)), abs(_wgslsmith_sub_u32(global1.c.x, firstLeadingBit(global0[_wgslsmith_index_u32(0u, 18u)]))), !arg_0.c.x);
    return global1.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = global1.d.a << (u_input.a.x % 32u);
    var var_1 = Struct_4(Struct_3(global1.d, arg_0, select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, true, false)), vec4<bool>(true, true, global1.b.x, global1.b.x), !vec4<bool>(true, false, global1.b.x, true)), vec4<bool>(false, !global1.b.x, !global1.b.x, any(vec4<bool>(false, true, true, global1.b.x))), true)), _wgslsmith_f_op_f32(arg_0.a + arg_0.a), Struct_3(global1.d, arg_0, vec4<bool>(func_3(Struct_3(global1.d, Struct_1(478f), vec4<bool>(global1.b.x, false, false, global1.b.x)), Struct_5(30926u, vec3<bool>(global1.b.x, global1.b.x, true), vec3<u32>(69737u, 101946u, global0[_wgslsmith_index_u32(0u, 18u)]), Struct_2(u_input.b.x)), global1.b.x && global1.b.x), true, (global2.x & 2147483647i) >= firstTrailingBit(u_input.b.x), any(vec4<bool>(global1.b.x, false, true, global1.b.x)) == true)));
    let var_2 = abs(_wgslsmith_sub_u32(global1.c.x, 36205u));
    var var_3 = -var_0;
    var var_4 = !vec4<bool>(true, select(!var_1.c.c.x, false, !var_1.a.c.x && var_1.a.c.x), true, false);
    return countOneBits(select(max((arg_1 >> (vec3<u32>(4294967295u, global1.a, 0u) % vec3<u32>(32u))) << (vec3<u32>(44635u, 0u, 1u) % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_i32(u_input.d.zww, vec3<i32>(var_1.a.a.a, -55046i, arg_1.x)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, arg_1.x, 7400i), u_input.d.yxy), var_1.c.c.x)), vec3<i32>(61754i, _wgslsmith_sub_i32(~var_0, -57938i), global2.x), select(var_4.wyz, select(select(vec3<bool>(true, true, true), var_4.wyw, false), vec3<bool>(var_4.x, var_4.x, true), var_1.c.c.x), select(!var_1.a.c.yxw, var_4.wxw, select(var_4.wzx, vec3<bool>(true, false, false), global1.b.x)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> i32 {
    global3 = global1.b.x;
    var var_0 = !vec4<bool>(_wgslsmith_f_op_f32(-arg_1.a) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))), global1.b.x, false, true);
    global2 = min(vec3<i32>(1i, global2.x << (~1u % 32u), ~u_input.c.x), u_input.d.wwz ^ -func_2(Struct_1(-908f), vec3<i32>(u_input.d.x, -10665i, 0i)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_mult_i32(-27374i, _wgslsmith_div_i32(global1.d.a, ~(-26115i)))), arg_1, !select(!select(vec4<bool>(true, global1.b.x, false, var_0.x), vec4<bool>(global1.b.x, var_0.x, true, true), var_0.x), vec4<bool>(global1.a <= u_input.a.x, any(vec2<bool>(global1.b.x, false)), func_3(Struct_3(global1.d, arg_1, vec4<bool>(true, false, false, true)), Struct_5(5736u, var_0.xzz, global1.c, global1.d), false), false), select(global1.b.x, true & global1.b.x, false)));
    var var_2 = u_input.d;
    return countOneBits(firstTrailingBit(1i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mod_vec3_i32(vec3<i32>(-(i32(-1i) * -global1.d.a), _wgslsmith_add_i32(func_1(0u, Struct_1(-868f)), -global2.x) << (1u % 32u), _wgslsmith_div_i32(func_2(Struct_1(-1596f), abs(vec3<i32>(-48438i, -2147483647i, 26526i))).x, -11349i)), vec3<i32>(global2.x, global1.d.a, ~_wgslsmith_clamp_i32(-global2.x, _wgslsmith_mult_i32(global2.x, global2.x), global1.d.a)));
    var var_0 = Struct_1(1453f);
    global2 = (vec3<i32>(-1i) * -vec3<i32>(min(global2.x, global1.d.a), _wgslsmith_mult_i32(u_input.b.x, u_input.c.x), -u_input.d.x)) | _wgslsmith_sub_vec3_i32(u_input.d.xzw, ~u_input.d.wzw << (~vec3<u32>(4294967295u, 53769u, 92880u) % vec3<u32>(32u)));
    let var_1 = Struct_3(global1.d, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(544f + _wgslsmith_f_op_f32(sign(var_0.a))) + var_0.a)), !(!select(select(vec4<bool>(global1.b.x, false, true, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true), vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x)), vec4<bool>(true, false, false, global1.b.x), global1.b.x)));
    global0 = array<u32, 18>();
    var var_2 = Struct_4(Struct_3(Struct_2(u_input.d.x), var_1.b, !(!select(var_1.c, var_1.c, vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x)))), var_0.a, Struct_3(global1.d, var_1.b, select(!vec4<bool>(false, global1.b.x, true, global1.b.x), select(select(var_1.c, var_1.c, var_1.c), vec4<bool>(global1.b.x, false, true, global1.b.x), true), vec4<bool>(!global1.b.x, any(global1.b.xy), var_1.c.x, !var_1.c.x))));
    let var_3 = var_2.c.a;
    var_2 = Struct_4(Struct_3(global1.d, var_2.c.b, select(vec4<bool>(global1.b.x, false, var_2.a.c.x, all(var_2.c.c)), !select(var_1.c, vec4<bool>(false, true, var_2.a.c.x, false), var_1.c), !any(var_2.a.c.ww))), -280f, Struct_3(Struct_2(~(i32(-1i) * -2147483647i)), Struct_1(_wgslsmith_f_op_f32(-886f - _wgslsmith_f_op_f32(f32(-1f) * -1234f))), select(var_1.c, select(!var_2.c.c, select(var_2.c.c, vec4<bool>(false, var_1.c.x, var_1.c.x, true), var_1.c), vec4<bool>(true, false, var_2.a.c.x, global1.b.x)), !vec4<bool>(var_1.c.x, global1.b.x, true, var_2.c.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.b.a));
}

