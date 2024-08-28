struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
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

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec3<u32>(36383u, 27881u, 0u)), Struct_3(vec3<u32>(20129u, 3163u, 49664u)), Struct_3(vec3<u32>(1u, 21783u, 16903u)), Struct_3(vec3<u32>(0u, 1u, 4294967295u)), Struct_3(vec3<u32>(16187u, 1u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 5447u)), Struct_3(vec3<u32>(0u, 69060u, 27840u)), Struct_3(vec3<u32>(50517u, 0u, 0u)), Struct_3(vec3<u32>(20014u, 1u, 1u)), Struct_3(vec3<u32>(30953u, 32454u, 108757u)), Struct_3(vec3<u32>(0u, 28440u, 1u)), Struct_3(vec3<u32>(4294967295u, 0u, 31809u)), Struct_3(vec3<u32>(48907u, 41215u, 16663u)), Struct_3(vec3<u32>(4294967295u, 1u, 18242u)), Struct_3(vec3<u32>(0u, 0u, 4294967295u)), Struct_3(vec3<u32>(7039u, 4294967295u, 0u)));

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(vec2<u32>(5049u, 4294967295u), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)));

var<private> global3: Struct_4;

var<private> global4: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_clamp_i32(~(-2147483647i), u_input.b.x, u_input.c);
    let var_1 = vec3<i32>(-2147483647i, countOneBits(u_input.b.x), 2147483647i);
    var var_2 = Struct_3(global4.a.yxw);
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(~23908u, ((18530u & var_2.a.x) ^ _wgslsmith_div_u32(var_2.a.x, global2.a.x)) >> (95815u % 32u)), _wgslsmith_add_u32(~global2.a.x, global3.a.x), _wgslsmith_mod_u32(1u, (abs(21013u) ^ global4.c.a.x) << (global2.a.x % 32u)), 0u >> (~u_input.a % 32u));
    let var_4 = Struct_1(vec4<bool>(true, true, true, true), !(!select(vec3<bool>(global3.c.b.c.x, false, global3.b.b.b.x), select(global4.c.b.a.xyy, global4.b.b.c, vec3<bool>(true, global3.b.b.a.x, true)), true)), vec3<bool>(any(!select(vec4<bool>(global3.c.b.a.x, false, global2.b.a.x, true), vec4<bool>(global2.b.b.x, global4.c.b.b.x, global4.b.b.b.x, false), false)), global4.c.b.a.x, true));
    return global3.b.a.x;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global2 = Struct_2(vec2<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(func_3(), ~4294967295u)), max(~(~global4.a.x), abs(firstLeadingBit(1u)))), Struct_1(select(select(vec4<bool>(false, false, global4.b.b.c.x, true), !global2.b.a, global3.b.b.a.x), !global4.b.b.a, !(!global2.b.a)), vec3<bool>(global3.b.b.a.x, select(true, select(true, global4.c.b.a.x, false), global2.b.a.x), any(!global3.c.b.a)), select(!(!vec3<bool>(true, global2.b.b.x, true)), global2.b.c, vec3<bool>(all(vec4<bool>(global4.b.b.c.x, global3.c.b.b.x, global3.c.b.a.x, false)), true, global3.b.a.x >= 1u))));
    global0 = array<Struct_3, 16>();
    let var_0 = -65219i;
    var var_1 = -746f;
    var var_2 = global2.b;
    return 21141u;
}

fn func_1() -> Struct_2 {
    global3 = Struct_4(vec4<u32>(~global2.a.x, ~(~countOneBits(global4.c.a.x)), func_2(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, 17281i, 24432i, u_input.b.x), -vec4<i32>(-1i, u_input.b.x, 2147483647i, 1i))), 890u), Struct_2(~select(global3.b.a, vec2<u32>(global4.a.x, global2.a.x), global2.b.a.xy) & global4.a.yy, global3.c.b), Struct_2(select(~vec2<u32>(global3.a.x, u_input.d), abs(global2.a), select(global3.c.b.a.ww, select(vec2<bool>(true, false), global3.b.b.c.zy, global2.b.b.x), !global4.c.b.a.x)), Struct_1(vec4<bool>(any(vec3<bool>(global2.b.c.x, global4.c.b.a.x, global3.b.b.c.x)), true, global4.c.b.a.x, true), !vec3<bool>(false, global4.b.b.b.x, false), !global3.c.b.c)));
    let var_0 = global0[_wgslsmith_index_u32(global2.a.x, 16u)];
    let var_1 = _wgslsmith_sub_i32(min(-2147483647i, select(min(u_input.c, u_input.b.x), u_input.c, false) >> (19264u % 32u)), _wgslsmith_dot_vec2_i32(u_input.b ^ (select(vec2<i32>(-1i, -21388i), vec2<i32>(u_input.c, -2147483647i), false) ^ (u_input.b | u_input.b)), firstTrailingBit((u_input.b | vec2<i32>(u_input.b.x, 18885i)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(10707u, u_input.a), vec2<u32>(global4.c.a.x, global2.a.x), global3.c.a) % vec2<u32>(32u)))));
    let var_2 = ~vec2<u32>(4294967295u, ~global3.b.a.x >> (~0u % 32u));
    let var_3 = -597f;
    return Struct_2(vec2<u32>(countOneBits(~3835u >> (1u % 32u)), ~global4.a.x), Struct_1(!(!vec4<bool>(global4.b.b.c.x, global3.c.b.a.x, true, global4.b.b.b.x)), select(select(vec3<bool>(true, false, false), global2.b.b, !global4.b.b.c), !global3.c.b.b, select(!global3.c.b.a.yzx, global3.b.b.c, global2.b.a.x)), !global2.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.b.a, select(!(!global4.c.b.c), global4.b.b.c, vec3<bool>(global3.b.b.a.x, !(u_input.c >= -1i), !global4.c.b.b.x)), global2.b.b);
    var var_1 = 15355i;
    global2 = func_1();
    var var_2 = global0[_wgslsmith_index_u32(global2.a.x, 16u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-326f)) - _wgslsmith_f_op_f32(select(537f, -291f, !global3.b.b.a.x)))));
    let var_4 = var_2.a.x;
    let var_5 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(reverseBits(~1u), ~28150u));
}

