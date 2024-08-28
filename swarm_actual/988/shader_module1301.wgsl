struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<f32, 19>;

var<private> global1: vec2<f32> = vec2<f32>(1064f, 1577f);

var<private> global2: array<vec4<bool>, 15>;

var<private> global3: vec2<f32> = vec2<f32>(1246f, -407f);

var<private> global4: vec3<u32> = vec3<u32>(1u, 25994u, 43036u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<u32>) -> bool {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), -325f);
    var var_0 = _wgslsmith_div_i32(countOneBits(abs(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(23728i, -35330i, 31382i)))), -(_wgslsmith_sub_i32(~(-1i), 0i) & -firstTrailingBit(-3855i)));
    let var_1 = Struct_1(-2477f, vec2<i32>(-2147483647i, ~0i), ~arg_2);
    var var_2 = vec2<u32>(35632u, ~(~37499u));
    var var_3 = select(select(select(!select(vec2<bool>(true, true), vec2<bool>(arg_0, false), vec2<bool>(true, arg_0)), select(vec2<bool>(false, arg_0), !vec2<bool>(arg_0, false), !vec2<bool>(arg_0, false)), vec2<bool>(true, true)), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), select(vec2<bool>(false, arg_0), vec2<bool>(false, true), false)), !(!vec2<bool>(false, arg_0)), select(vec2<bool>(true, true), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false)), vec2<bool>(false, false))), true), select(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !all(vec4<bool>(true, arg_0, true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(false, false), vec2<bool>(true, arg_0), arg_0)), true), !select(vec2<bool>(!arg_0, arg_0 || false), !(!vec2<bool>(arg_0, arg_0)), vec2<bool>(true, arg_0)));
    return arg_0;
}

fn func_2() -> u32 {
    var var_0 = Struct_5(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, global4.x == global4.x, 44785u <= u_input.a.x), vec3<bool>(true, true, true), func_3(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(823f, 156f, global3.x) * vec3<f32>(global0[_wgslsmith_index_u32(global4.x, 19u)], global0[_wgslsmith_index_u32(12757u, 19u)], global1.x)), vec3<u32>(u_input.a.x, 4294967295u, 10990u))), (any(vec2<bool>(true, false)) || all(vec4<bool>(false, false, false, false))) && true), ~(~(-2147483647i)), Struct_1(global0[_wgslsmith_index_u32(abs(6565u), 19u)], firstTrailingBit(countOneBits(~vec2<i32>(-17910i, 2147483647i))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(47464u, global4.x), max(global4.x, u_input.a.x)), u_input.a.xxw, u_input.a.yxx)));
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(var_0.c.c.x, 143748u), global4.x);
    var_1 = ~(~(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(47668u, var_0.c.c.x), global4.xz)) << (var_0.c.c.xz % vec2<u32>(32u))));
    var var_2 = Struct_2(var_0.c, var_0.c, select(select(!select(vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.a.x, true), var_0.a.zz), vec2<bool>(true, true), vec2<bool>(any(var_0.a.xy), true)), var_0.a.xx, func_3(all(!var_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(142f, -1748f, -857f) + vec3<f32>(global0[_wgslsmith_index_u32(global4.x, 19u)], var_0.c.a, -1000f)), u_input.a.yxx)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_mult_vec2_i32(select(_wgslsmith_div_vec2_i32(var_0.c.b, vec2<i32>(var_0.c.b.x, 54683i)), var_0.c.b, vec2<bool>(var_0.a.x, var_0.a.x)), _wgslsmith_div_vec2_i32(firstLeadingBit(var_0.c.b), vec2<i32>(1i, 1i))), var_0.c.c ^ select(vec3<u32>(48030u, 4294967295u, global4.x), _wgslsmith_mod_vec3_u32(var_0.c.c, vec3<u32>(4294967295u, 0u, u_input.a.x)), select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(true, var_0.a.x, var_0.a.x), var_0.a.x))));
    global4 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.zyz, vec3<u32>(_wgslsmith_clamp_u32(94413u, u_input.a.x, var_2.d.c.x), reverseBits(var_2.a.c.x), global4.x), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, var_1.x), var_0.c.c, var_0.c.c), vec3<u32>(var_0.c.c.x, var_2.a.c.x, 34326u))), ~u_input.a.yzz), var_1.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global4.x, abs(4294967295u)), select(var_0.c.c.x, ~var_2.a.c.x, true), abs(~0u)) >> ((1u & firstLeadingBit(var_0.c.c.x)) % 32u));
    return var_1.x;
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-642f, global1.x));
    let var_0 = vec3<u32>(~0u, 70473u, 1u);
    var var_1 = Struct_5(select(vec3<bool>(true, any(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(82603u, u_input.a.x), 15u)]), all(vec2<bool>(true, true))), !vec3<bool>(true, false, global1.x >= global3.x), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, true)), vec3<bool>(true, true, select(false, true, true)))), ~(-min(1i, -2147483647i)), Struct_1(global0[_wgslsmith_index_u32(~u_input.a.x, 19u)], -(~min(vec2<i32>(-2147483647i, 67164i), vec2<i32>(0i, -2147483647i))), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0.x, u_input.a.x, var_0.x, global4.x)), select(~0u, _wgslsmith_mult_u32(4294967295u, global4.x), true), 4294967295u)));
    var var_2 = global3.x;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -403f)) - vec2<f32>(var_1.c.a, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~3502u, 19u)] + _wgslsmith_f_op_f32(f32(-1f) * -843f)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1487f))), ~(-(~vec2<i32>(2147483647i, var_1.c.b.x))), max(vec3<u32>(u_input.a.x, func_2(), var_1.c.c.x << (var_1.c.c.x % 32u)), ~(~vec3<u32>(u_input.a.x, 2412u, 4294967295u)))), var_1.c, select(select(!var_1.a.yy, select(select(var_1.a.yz, vec2<bool>(true, var_1.a.x), true), vec2<bool>(var_1.a.x, false), var_1.a.yx), false || (38894u >= global4.x)), vec2<bool>(true, false), var_1.a.xz), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<f32, 19>();
    var var_1 = !(!(!(!select(vec3<bool>(true, var_0.c.x, false), vec3<bool>(true, var_0.c.x, var_0.c.x), vec3<bool>(true, var_0.c.x, true)))));
    var var_2 = select(select(select(select(vec3<bool>(false, var_0.c.x, false), select(vec3<bool>(true, true, var_0.c.x), vec3<bool>(true, var_1.x, var_0.c.x), false), select(vec3<bool>(var_0.c.x, var_0.c.x, var_1.x), vec3<bool>(var_0.c.x, var_0.c.x, var_1.x), vec3<bool>(var_0.c.x, true, true))), !vec3<bool>(var_0.c.x, true, true), vec3<bool>(71742i == var_0.a.b.x, !var_0.c.x, any(vec4<bool>(var_1.x, true, true, var_0.c.x)))), vec3<bool>(true, true, true), !(!select(vec3<bool>(false, false, false), vec3<bool>(var_1.x, true, var_0.c.x), vec3<bool>(var_0.c.x, false, var_0.c.x)))), select(vec3<bool>(true, true, !(var_1.x || var_0.c.x)), select(select(!vec3<bool>(var_1.x, true, true), select(vec3<bool>(var_0.c.x, true, var_0.c.x), vec3<bool>(true, true, false), vec3<bool>(var_0.c.x, false, true)), !vec3<bool>(var_1.x, var_1.x, var_0.c.x)), !(!vec3<bool>(var_0.c.x, var_1.x, false)), true), !(!(!vec3<bool>(false, var_1.x, true)))), !(!(var_1.x && true)) && var_1.x);
    let var_3 = Struct_3(func_1().d, -abs(countOneBits(vec3<i32>(var_0.b.b.x, var_0.a.b.x, var_0.b.b.x))));
    global0 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.x);
}

