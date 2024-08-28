struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(180f, -105f, 389f, -384f, 537f, -899f, -103f, 576f);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<u32>(4294967295u, 114150u, 1u), 4294967295u, vec2<i32>(0i, 20979i), vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(1u, 51284u, 0u), 0u, vec2<i32>(0i, -1i), vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(45785u, 0u, 37884u), 0u, vec2<i32>(-76499i, 0i), vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(1u, 56089u, 4294967295u), 13198u, vec2<i32>(-15130i, 35057i), vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(0u, 4517u, 5060u), 4294967295u, vec2<i32>(-41799i, 1i), vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(4294967295u, 0u, 7531u), 10174u, vec2<i32>(i32(-2147483648), 0i), vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(0u, 0u, 1u), 0u, vec2<i32>(i32(-2147483648), -36520i), vec4<bool>(true, false, true, false)), Struct_1(vec3<u32>(1u, 23369u, 4294967295u), 1u, vec2<i32>(1i, -1i), vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(25136u, 91084u, 50373u), 1u, vec2<i32>(-12162i, -45098i), vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(68666u, 61705u, 4294967295u), 0u, vec2<i32>(-36165i, 33761i), vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(34768u, 0u, 0u), 0u, vec2<i32>(-11296i, 4984i), vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(0u, 0u, 62762u), 32998u, vec2<i32>(2147483647i, 0i), vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(0u, 114678u, 1006u), 4294967295u, vec2<i32>(i32(-2147483648), -5641i), vec4<bool>(true, true, false, false)), Struct_1(vec3<u32>(10972u, 27779u, 1u), 4294967295u, vec2<i32>(1i, -23523i), vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(4294967295u, 73690u, 4294967295u), 26678u, vec2<i32>(0i, -16397i), vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(24711u, 29664u, 0u), 6406u, vec2<i32>(32806i, 21677i), vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(1u, 38532u, 0u), 0u, vec2<i32>(-1i, -2119i), vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(4294967295u, 0u, 94620u), 32822u, vec2<i32>(-3034i, 2147483647i), vec4<bool>(true, true, false, false)), Struct_1(vec3<u32>(22890u, 34173u, 1u), 1u, vec2<i32>(-17598i, 47912i), vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(1u, 1u, 0u), 1u, vec2<i32>(i32(-2147483648), 14489i), vec4<bool>(true, true, false, false)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), 4294967295u, vec2<i32>(2147483647i, 0i), vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(32736u, 24072u, 0u), 77049u, vec2<i32>(0i, 43604i), vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 1u, vec2<i32>(-1i, 19397i), vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), 8469u, vec2<i32>(i32(-2147483648), 45002i), vec4<bool>(true, true, false, false)), Struct_1(vec3<u32>(0u, 94389u, 17389u), 72097u, vec2<i32>(1410i, 76482i), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(0u, 7378u, 105104u), 19249u, vec2<i32>(2147483647i, 1i), vec4<bool>(true, false, false, true)));

var<private> global2: vec2<bool>;

var<private> global3: vec2<i32> = vec2<i32>(7829i, 0i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> bool {
    return true;
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = ~(vec3<u32>(min(~arg_0.x, arg_0.x), 4294967295u, ~select(u_input.a, 23255u, global2.x)) >> (arg_0.wxy % vec3<u32>(32u)));
    let var_1 = Struct_1(reverseBits(firstLeadingBit(~min(vec3<u32>(0u, var_0.x, 47797u), arg_0.xzw))), arg_0.x, _wgslsmith_sub_vec2_i32(~u_input.b.xy, u_input.b.xz ^ ((vec2<i32>(0i, global3.x) | u_input.b.zy) >> (~vec2<u32>(var_0.x, u_input.a) % vec2<u32>(32u)))), !vec4<bool>(global2.x, false, true && any(vec2<bool>(false, true)), all(vec2<bool>(global2.x, global2.x))));
    let var_2 = any(var_1.d);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, _wgslsmith_f_op_f32(-183f * global0[_wgslsmith_index_u32(u_input.a, 8u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1627f, -1987f)), _wgslsmith_f_op_f32(sign(-994f)))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -986f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -917f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1153f, -287f, 935f, 1114f) + var_3.a) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2076f, global0[_wgslsmith_index_u32(var_1.a.x, 8u)], global0[_wgslsmith_index_u32(17554u, 8u)], 733f)), vec4<f32>(-1388f, 1809f, var_3.a.x, var_3.a.x))), vec4<bool>(_wgslsmith_f_op_f32(sign(-293f)) >= -286f, !var_2, false, _wgslsmith_mult_i32(var_1.c.x, -1i) > abs(0i)))));
    return var_4.a;
}

fn func_2() -> bool {
    global3 = u_input.b.zz;
    global2 = !(!(!vec2<bool>(u_input.a >= 16697u, global2.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(abs(~abs(~vec4<u32>(u_input.a, u_input.a, 85349u, u_input.a)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 163f, global0[_wgslsmith_index_u32(u_input.a, 8u)], 2019f) * _wgslsmith_f_op_vec4_f32(sign(var_0))))));
    var var_2 = vec4<u32>(~1u, u_input.a, u_input.a, u_input.a ^ ~u_input.a);
    return false;
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    global3 = ~vec2<i32>(i32(-1i) * -countOneBits(-16436i), ~5512i);
    let var_0 = Struct_1(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 20627u, u_input.a)) & (~(~vec3<u32>(u_input.a, u_input.a, 0u)) & max(_wgslsmith_mult_vec3_u32(vec3<u32>(35029u, 0u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, 1u, u_input.a))), 83976u, ~vec2<i32>(~(-21588i) | max(global3.x, u_input.b.x), abs(select(54157i, global3.x, true))), vec4<bool>(select(!arg_0.x, arg_0.x, true), (global2.x && false) | all(!vec3<bool>(arg_0.x, false, false)), (_wgslsmith_mult_i32(-2147483647i, global3.x) > ~55269i) || select(global0[_wgslsmith_index_u32(u_input.a, 8u)] != global0[_wgslsmith_index_u32(12918u, 8u)], true, !arg_0.x), !(true || global2.x) || (false && arg_0.x)));
    var var_1 = ~_wgslsmith_clamp_u32(~var_0.a.x, ~countOneBits(46203u << (u_input.a % 32u)), var_0.a.x);
    let var_2 = vec4<bool>(!select(func_2(), arg_0.x, true), var_0.d.x, true, any(vec3<bool>(~u_input.b.x > ~u_input.b.x, any(select(vec2<bool>(true, true), vec2<bool>(var_0.d.x, global2.x), vec2<bool>(arg_0.x, true))), true)));
    global3 = _wgslsmith_sub_vec2_i32(min(vec2<i32>(56082i, var_0.c.x), -vec2<i32>(u_input.b.x, 5668i)) ^ firstTrailingBit(var_0.c << (vec2<u32>(var_0.b, 51035u) % vec2<u32>(32u))), u_input.b.zz) & (_wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, 2147483647i)), select(~vec2<i32>(global3.x, 0i), vec2<i32>(global3.x, 1830i) << (vec2<u32>(22601u, 18543u) % vec2<u32>(32u)), global2.x == true), u_input.b.xx ^ var_0.c) & firstTrailingBit(~vec2<i32>(global3.x, var_0.c.x)));
    return Struct_1(var_0.a, ~_wgslsmith_clamp_u32(min(73482u, u_input.a), _wgslsmith_mult_u32(u_input.a, 0u), abs(var_0.b)) >> (var_0.b % 32u), _wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.b.x, u_input.b.x), var_0.c), var_0.c), vec4<bool>(all(vec4<bool>(true, true, false, all(vec2<bool>(true, false)))), any(!(!var_2.wxy)), var_2.x, all(var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(!select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(true, false, true, global2.x), func_1()), select(vec4<bool>(true, func_2(), true, false), vec4<bool>(global2.x, all(vec2<bool>(global2.x, global2.x)), any(vec2<bool>(false, global2.x)), false), !vec4<bool>(true, true, true, global2.x)), vec4<bool>((global3.x ^ global3.x) <= reverseBits(global3.x), !global2.x, global2.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 8u)] - global0[_wgslsmith_index_u32(u_input.a, 8u)]) != _wgslsmith_f_op_f32(-174f + global0[_wgslsmith_index_u32(u_input.a, 8u)]))));
    global3 = select((min(vec2<i32>(-5144i, u_input.b.x), var_0.c ^ vec2<i32>(-41263i, global3.x)) ^ firstTrailingBit(vec2<i32>(-1i, 0i) | var_0.c)) ^ vec2<i32>(~12676i, _wgslsmith_mult_i32(-34565i, firstTrailingBit(-2147483647i))), vec2<i32>(-1i) * -min(~vec2<i32>(2147483647i, global3.x), vec2<i32>(-17512i, 23990i)), (select(var_0.d.x, false, func_4(var_0.d).d.x) | false) && any(vec3<bool>(true, var_0.d.x, true)));
    let var_1 = ~(~(~0u) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(33633u, var_0.a.x), _wgslsmith_clamp_u32(var_0.b, var_0.b, 52653u)) % 32u)) >> (_wgslsmith_div_u32(8276u, ~((0u & var_0.b) ^ ~u_input.a)) % 32u);
    var var_2 = vec3<bool>(func_2(), any(func_4(var_0.d).d), var_0.d.x);
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_0.c.x, var_3.c.x), _wgslsmith_div_f32(1177f, _wgslsmith_f_op_f32(f32(-1f) * -430f)));
}

